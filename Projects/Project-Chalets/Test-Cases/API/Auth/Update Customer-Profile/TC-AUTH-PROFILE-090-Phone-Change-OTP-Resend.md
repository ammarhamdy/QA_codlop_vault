---
tc_id: TC-AUTH-PROFILE-090
title: Resend change-phone OTP within configured policy
priority: High
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
| Scenario | Resend change-phone OTP within configured policy |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | B new; request and resend OTP |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request phone-change OTP for B.
2. Attempt resend before the configured cooldown.
3. Resend after cooldown.
4. Try original OTP then newest OTP.

## Expected Result

- Early resend: HTTP `429` expected provisionally; exact code per API contract.
- Early request is rate-limited and includes remaining wait where supported.
- After allowed resend, a new OTP is issued; old OTP is invalidated.
- Phone remains A until successful verification.

## Notes

- PRD default resend 60 seconds, configurable; progressive backoff not explicitly in PRD.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
