**System Architecture & End-to-End Registration Cycle**

* **Step 1: Send OTP (`POST /api/otp/send`)**
* **Input:** `phone_code`, `phone`, `type="register"`, `user_type_id="4"` (Service Provider).
* **Action:** System dispatches OTP and returns a `verification_token` UUID.


* **Step 2: Verify OTP (`POST /api/otp/verify`)**
* **Input:** `verification_token`, `otp_code="12345"`, `device_token`.
* **Action:** Validates code, returns a temporary/auth `Bearer <token>`, and sets status to `complete_profile`.


* **Step 3: Complete Profile (`POST /api/auth/complete-registration`)**
* **Input (Bearer Token Auth):** `name`, `address`, `latitude`, `longitude`, `service_provider_type`.
* **Action:** Saves provider core profile and transitions status to `complete_bank_account`.


* **Step 4: Bank Account (Optional / Skippable)**
* **Path A (Submit):** `POST /api/bank-accounts` with `holder_name`, `account_number`, `iban`, `bank_name` (Sets `is_main: true`).
* **Path B (Skip):** User taps "تخطي" (Skip) $\rightarrow$ Bypass API call and redirect directly to Provider Home/Dashboard.


* **Step 5: Session Termination (`POST /api/auth/logout`)**
* **Input (Bearer Token Auth):** `device_token`.
* **Action:** Revokes Bearer token and redirects to login/guest screen.



---

**Acceptance Criteria (GIVEN, WHEN, THEN, AND)**

**Scenario 1: Send OTP Request**

* **GIVEN** an unregistered service provider is on the phone entry screen
* **WHEN** the user submits `phone_code="966"`, `phone="501000017"`, and selects provider role (`user_type_id="4"`)
* **THEN** the system calls `POST /api/otp/send` with `type="register"`
* **AND** stores the returned `verification_token` UUID and redirects the user to the OTP verification screen.

---

**Scenario 2: Successful OTP Verification**

* **GIVEN** the user is on the OTP verification screen with an active `verification_token`
* **WHEN** the user inputs `otp_code="12345"` and device token
* **THEN** the system calls `POST /api/otp/verify`
* **AND** receives an authenticated `Bearer <token>` with `"status": "complete_profile"`
* **AND** navigates the user to the Complete Registration Profile form.

---

**Scenario 3: Complete Registration Profile Details**

* **GIVEN** the user has an active Bearer token from OTP verification
* **WHEN** the user fills in `name`, `address`, `latitude`, `longitude`, and `service_provider_type`
* **AND** taps "متابعة" (Continue / Submit)
* **THEN** the system calls `POST /api/auth/complete-registration` with the Bearer token
* **AND** upon receiving `"status": "complete_bank_account"`, navigates the user to the Bank Account Setup screen.

---

**Scenario 4: Add Bank Account (Completed)**

* **GIVEN** the provider is on the Bank Account Setup screen
* **WHEN** the user fills in `holder_name`, `account_number`, `iban`, and `bank_name`
* **AND** taps "حفظ الحساب البنكي" (Save Bank Account)
* **THEN** the system calls `POST /api/bank-accounts` with the active Bearer token
* **AND** upon receiving HTTP 200 (`"success": true`), displays a success message and routes the user to the Provider Main Dashboard.

---

**Scenario 5: Skip Bank Account Form**

* **GIVEN** the provider is on the Bank Account Setup screen
* **WHEN** the user taps the "تخطي" (Skip) button
* **THEN** the system bypasses the `/api/bank-accounts` API call
* **AND** routes the user directly to the Provider Main Dashboard with an unlinked bank account status.

---

**Scenario 6: User Logout**

* **GIVEN** an authenticated provider is logged in
* **WHEN** the user initiates logout from settings/profile
* **THEN** the system calls `POST /api/auth/logout` sending the `device_token` under the active `Bearer <token>`
* **AND** clears local storage tokens and returns the app to the Initial/Login Screen.


----

