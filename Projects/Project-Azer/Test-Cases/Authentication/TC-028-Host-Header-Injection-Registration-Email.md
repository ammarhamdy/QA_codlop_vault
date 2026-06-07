---
tc_id: TC-028
title: Verify Host Header Injection Cannot Poison the Verification Email Link
priority:
  - High
status:
  - Ready
type:
  - API
linked_requirement:
tags:
  - test-case
  - authentication
---

# Test Data

| Field                  | Value                                                     |
| ---------------------- | --------------------------------------------------------- |
| name                   | ammar                                                     |
| phone_code             | 966                                                       |
| phone                  | 500000023                                                 |
| email                  | [test.host01@example.com](mailto:test.host01@example.com) |
| policies_accepted      | 1                                                         |
| password               | Admin#123                                                 |
| password_confirmation  | Admin#123                                                 |
| Host header (injected) | `attacker.com`                                            |
# Preconditions
- API sends a verification email post-registration
- Burp Suite available to modify request headers
# Steps
- Intercept the registration request
- Modify the `Host` header to `attacker.com`
- Send the request
- Check the verification email received at `test.host01@example.com`
- Inspect the verification link domain in the email
# Expected Result
- Verification link domain is hardcoded or taken from server config — NOT from the `Host` header
- Link points to `malkat-dashboard.codlop.sa`, not `attacker.com`
- No `Host` header value appears anywhere in the email
# Notes
If the verification link reads `https://attacker.com/verify?token=...`, the attacker can phish users into clicking a link that sends their token to an attacker-controlled server. **High** severity — password reset flows are especially vulnerable to this pattern.
# Attachments
