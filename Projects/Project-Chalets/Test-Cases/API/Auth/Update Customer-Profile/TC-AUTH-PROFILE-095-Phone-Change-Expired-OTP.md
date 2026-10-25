---
tc_id: TC-AUTH-PROFILE-095
title: Reject expired OTP when changing phone
priority: High
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - phone-change
  - negative
run_result: "-"
---

# TC-AUTH-PROFILE-095-Phone-Change-Expired-OTP

## Test Data

| Field | Value |
|---|---|
| Scenario | Reject expired OTP when changing phone |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new; OTP after configured expiration |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request OTP for B.
2. Wait for OTP expiration (5 minutes default).
3. Submit expired OTP.
4. GET profile.

## Expected Result

- HTTP status: **Contract clarification required**.
- `OTP_EXPIRED`-type error is returned per contract.
- Phone remains A and no success SMS is sent.

## Notes

- OTP expiry defaults to 5 minutes; configurable.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
