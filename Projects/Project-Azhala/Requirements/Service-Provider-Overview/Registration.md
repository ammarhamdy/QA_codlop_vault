# API Architecture & Contract Breakdown

## Endpoint 1: `/api/otp/send` (POST)

- **Payload:**
  - `phone_code` (e.g., `966`)
  - `phone` (e.g., `500000012`)
  - `type` (`"register"`)
  - `user_type_id` (e.g., `"4"` for Service Provider)
- **Headers:**
  - `Authorization: Bearer <guest_token>`
- **Response:**
  - Returns an OTP request session with a `verification_token` UUID.
  - Example: `01a03901-f2e4-703f-8661-61c39b5a1310`

---

## Endpoint 2: `/api/otp/verify` (POST)

- **Payload:**
  - `verification_token` — received from Step 1
  - `otp_code` — 5-digit code, e.g., `12345`
  - `device_token` — FCM/APNS push token
- **Response:**
  - Validates the OTP code.
  - Generates and returns an authenticated `Bearer <auth_token>` for the uncompleted profile.
  - Example: `25|rn6oz...`

---

## Endpoint 3: `/api/auth/complete-registration` (POST)

- **Payload:**
  - `name`
  - `address`
  - `latitude`
  - `longitude`
  - `commercial_register`
  - `tax_number`
  - `service_provider_type`
- **Headers:**
  - `Authorization: Bearer <auth_token>` — issued by `/api/otp/verify`
- **Response:**
  - Activates the account and returns the full user entity profile.

---

# Acceptance Criteria (GIVEN, WHEN, THEN, AND)

## Scenario 1: Happy Path — Trigger OTP Generation (`/api/otp/send`)

- **GIVEN** an unregistered user opens the registration screen
- **WHEN** the user selects the user type corresponding to `user_type_id="4"` (Service Provider)
- **AND** enters `phone_code="966"` and `phone="500000012"`
- **AND** submits the initial step (`"التالي"`)
- **THEN** the client dispatches a `POST` request to `/api/otp/send` with `type="register"`
- **AND** receives a successful response containing a `verification_token` UUID
- **AND** the app navigates to the OTP screen
- **AND** stores the `verification_token` in memory
- **AND** starts the 90-second resend timer

---

## Scenario 2: Happy Path — Verify OTP and Obtain Auth Bearer Token (`/api/otp/verify`)

- **GIVEN** the user is on the OTP screen with a valid stored `verification_token`
- **WHEN** the user inputs `otp_code="12345"`
- **THEN** the client dispatches a `POST` request to `/api/otp/verify`
- **AND** includes:
  - `verification_token`
  - `otp_code`
  - the device's `device_token`
- **AND** the server validates the code and returns HTTP `200` with an authenticated `Bearer <token>`
- **AND** the client stores the Bearer token in secure session storage
- **AND** the user is redirected to the Complete Registration Form

---

## Scenario 3: Edge Case — App Closed Before Submitting OTP (`/api/otp/verify`)

- **GIVEN** `/api/otp/send` was successfully executed
- **AND** the user is currently on the OTP screen
- **WHEN** the user force-closes or terminates the app before entering the OTP
- **AND** reopens the app

### Case A: Session Active / Stored `verification_token` Not Expired

- **THEN** the app resumes directly on the OTP verification screen
- **AND** retains the stored `verification_token`
- **AND** recalibrates the resend countdown

### Case B: Session Expired / `verification_token` Invalid

- **THEN** the app resets its registration state to Screen 1
- **AND** displays the error message:

  > انتهت صلاحية الجلسة، يرجى إعادة إدخال رقم الجوال

  _Session expired, please re-enter phone number._

- **AND** clears the stored `verification_token`

---

## Scenario 4: Edge Case — App Closed After OTP Verification but Before Completing Registration

- **GIVEN** `/api/otp/verify` succeeded
- **AND** an authenticated `Bearer <token>` is saved locally
- **WHEN** the user closes or kills the app before submitting the profile details
- **AND** relaunches the application

### Case A: Token Valid and Profile Status Is `pending_completion`

- **THEN** the application detects the incomplete profile state via token inspection or a bootstrap API
- **AND** routes the user directly to Screen 3: Complete Registration Form
- **AND** skips Step 1 and Step 2

### Case B: Token Expired or Revoked

- **THEN** the application clears the invalid token
- **AND** redirects the user back to Step 1: Phone & Role Selection
- **AND** displays an explanatory prompt

---

## Scenario 5: Negative Path — OTP Verification Failure (`/api/otp/verify`)

- **GIVEN** the user is on the OTP screen with a valid `verification_token`
- **WHEN** the user submits an invalid `otp_code`
- **OR** the `verification_token` has expired on the backend
- **THEN** the `/api/otp/verify` endpoint returns an error status, such as HTTP `422` or `400`
- **AND** the client displays an inline error:

  > رمز التحقق غير صحيح أو منتهي الصلاحية

- **AND** clears the OTP input boxes
- **AND** does not generate or store an authenticated Bearer token

---

## Scenario 6: Happy Path — Submit Final Registration Details (`/api/auth/complete-registration`)

- **GIVEN** the user is authenticated using the Bearer token received from OTP verification
- **WHEN** the user fills out the required provider data:

```json
{
  "name": "طباخ الرئيس",
  "address": "شارع الملك فهد، الرياض",
  "latitude": "24.7136",
  "longitude": "46.6753",
  "commercial_register": "5212725210",
  "tax_number": "545125719571230",
  "service_provider_type": "طباخ"
}
```

- **AND** taps `"إنشاء حساب"` (Create Account)
- **THEN** the client sends a `POST` request to `/api/auth/complete-registration`
- **AND** includes the authorization header:

```
Authorization: Bearer <auth_token>
```

- **AND** submits the completed form data
- **AND** upon receiving HTTP `200` or `201` Success, updates the local account state to `active`
- **AND** navigates the user to the Provider Main Dashboard