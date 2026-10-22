---
tc_id: TC-AUTH-PROFILE-084
title: Notify old number after successful phone change
priority: Critical
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - phone-change
  - validation
run_result: "-"
---


## Test Data

| Field | Value |
|---|---|
| Scenario | Notify old number after successful phone change |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old receives SMS; B new verified |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Complete successful phone change A → B.
2. Inspect SMS delivery to A.
3. GET profile.

## Expected Result

- Successful phone-change completion: HTTP `200` (provisional).
- Old number A receives SMS: `تم تغيير رقم الدخول لحسابك في تنفيذ. إن لم تكن أنت تواصل معنا`.
- New number B is saved as login phone.

## Notes

- SMS text explicitly defined in PRD.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
