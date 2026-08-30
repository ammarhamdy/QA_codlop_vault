**System Architecture & State Machine**

* **Global Registration Lifecycle:**

$$\text{Screen 1: Role \& Phone} \xrightarrow{POST\ /api/otp/send} \text{Screen 2: OTP Verification} \xrightarrow{POST\ /api/otp/verify} \text{Screen 3: Role Data Form} \xrightarrow{POST\ /api/auth/complete-registration} \text{Screen 4: Bank Account (Optional)} \xrightarrow{POST\ /api/bank-accounts\ \text{OR Skip}} \text{Dashboard}$$


* **Role Identification Matrix:**
* `id: 1` $\rightarrow$ `customer` (Client / عميل)
* `id: 2` $\rightarrow$ `owner` (Place Owner / مؤجِّر)
* `id: 4` $\rightarrow$ `service_provider` (Service Provider / مزود خدمة)


* **Approval Flag Behavior:**
* Customer profiles are auto-approved (`"is_approved": true`).
* Owner & Service Provider profiles require back-office verification (`"is_approved": false`).



---

**Detailed Acceptance Criteria & Requirements**

**REQ-001: Role Selection & OTP Trigger (`POST /api/otp/send`)**

* **Description:** Initiate registration session by sending a verification token and triggering SMS OTP.
* **Payload:** `phone_code`, `phone`, `type="register"`, `user_type_id` (`1`, `2`, or `4`).
* **Scenario 1.1 (Success):**
* **GIVEN** a new user selects any valid role (`user_type_id`: `1`, `2`, or `4`) and enters a valid phone (`phone_code="966"`, `phone="50XXXXXXX"`)
* **WHEN** the user taps "التالي" (Next)
* **THEN** system executes `POST /api/otp/send`
* **AND** stores `verification_token` UUID from response data
* **AND** navigates user to Screen 2 with a 90-second countdown timer.


* **Scenario 1.2 (Validation Failure / Rate Limit):**
* **GIVEN** an invalid phone number or an active unexpired request cooldown
* **WHEN** the request is dispatched
* **THEN** backend returns `HTTP 422/429` with error message
* **AND** client shows inline error without transitioning screen.



---

**REQ-002: OTP Verification & Auth Token Issuance (`POST /api/otp/verify`)**

* **Description:** Validate 5-digit code, bind device token for push notifications, and issue a temporary authenticated Bearer session.
* **Payload:** `verification_token`, `otp_code="12345"`, `device_token`.
* **Scenario 2.1 (Success):**
* **GIVEN** user is on Screen 2 with a valid `verification_token`
* **WHEN** user enters the valid 5-digit OTP
* **THEN** system executes `POST /api/otp/verify`
* **AND** receives `token` (`Bearer`), `user_type`, and `"status": "complete_profile"`
* **AND** securely persists the Bearer token for subsequent requests
* **AND** redirects user to the corresponding role-based profile completion form (Screen 3).


* **Scenario 2.2 (Invalid/Expired OTP):**
* **GIVEN** user enters an incorrect OTP or session exceeds backend TTL
* **WHEN** verification request executes
* **THEN** system returns an error (`HTTP 400/422`)
* **AND** UI clears input fields, displays error message, and retains remaining timer countdown.



---

**REQ-003: Dynamic Role-Based Profile Completion (`POST /api/auth/complete-registration`)**

* **Description:** Complete account details dynamically mapped to the user type selected in Step 1.
* **Auth Header:** `Authorization: Bearer <token>`
* **Field Mapping by User Type:**
* **Customer (`id: 1`):** `name`, `address`, `latitude`, `longitude`.
* **Place Owner (`id: 2`):** `name`, `address`, `latitude`, `longitude`, `commercial_register`, `tax_number`.
* **Service Provider (`id: 4`):** `name`, `address`, `latitude`, `longitude`, `commercial_register`, `tax_number`, `service_provider_type`.


* **Scenario 3.1 (Customer Submission):**
* **GIVEN** an authenticated user with `user_type_id: 1`
* **WHEN** submitting `name`, `address`, `latitude`, and `longitude`
* **THEN** system returns `"status": "complete_bank_account"` with `"is_approved": true`
* **AND** routes user to Screen 4 (Bank Account Screen).


* **Scenario 3.2 (Owner Submission):**
* **GIVEN** an authenticated user with `user_type_id: 2`
* **WHEN** submitting `name`, `address`, `latitude`, `longitude`, `commercial_register`, and `tax_number`
* **THEN** system returns `"status": "complete_bank_account"` with `"is_approved": false`
* **AND** routes user to Screen 4.


* **Scenario 3.3 (Service Provider Submission):**
* **GIVEN** an authenticated user with `user_type_id: 4`
* **WHEN** submitting `name`, `address`, `latitude`, `longitude`, `commercial_register`, `tax_number`, and `service_provider_type`
* **THEN** system returns `"status": "complete_bank_account"` with `"is_approved": false`
* **AND** routes user to Screen 4.



---

**REQ-004: Bank Account Form & Skip Logic (`POST /api/bank-accounts`)**

* **Description:** Optional step to add financial payout details.
* **Auth Header:** `Authorization: Bearer <token>`
* **Payload:** `holder_name`, `account_number`, `iban`, `bank_name`.
* **Scenario 4.1 (Save Bank Account):**
* **GIVEN** user is on Screen 4
* **WHEN** user enters all bank details and clicks "حفظ الحساب البنكي" (Save)
* **THEN** system executes `POST /api/bank-accounts`
* **AND** returns HTTP 200 with `"is_main": true`
* **AND** routes user to the Main Dashboard / Pending Approval Screen depending on `is_approved`.


* **Scenario 4.2 (Skip Bank Account):**
* **GIVEN** user is on Screen 4
* **WHEN** user clicks "تخطي" (Skip)
* **THEN** system bypasses the `/api/bank-accounts` endpoint entirely
* **AND** immediately navigates the user to the Main Dashboard / Pending Approval Screen.



---

**REQ-005: Lifecycle & Interruption Edge Cases**

* **Scenario 5.1 (App Terminated During OTP Step):**
* **GIVEN** OTP was dispatched via `/api/otp/send`
* **WHEN** user force-closes the app and reopens it
* **THEN** if stored `verification_token` is still within expiration timestamp, resume directly on Screen 2 with remaining timer; otherwise, reset to Screen 1.


* **Scenario 5.2 (App Terminated Before Completing Profile):**
* **GIVEN** user verified OTP and obtained Bearer token, but closed app before submitting registration
* **WHEN** user reopens the app
* **THEN** app checks session status via token check; if status is `complete_profile`, navigate directly to Screen 3 without re-prompting for OTP.


* **Scenario 5.3 (App Terminated on Bank Account Step):**
* **GIVEN** user completed Screen 3 but closed app on Screen 4
* **WHEN** user reopens the app
* **THEN** app detects registration status as `complete_bank_account`
* **AND** opens Screen 4 allowing the user to either submit bank info or tap "تخطي" (Skip).

