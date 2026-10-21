---
tc_id: TC-027
title: Verify google_id Cannot Be Linked to a New Account Without Valid Google Token Verification
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

| Field                 | Value                                                       |
| --------------------- | ----------------------------------------------------------- |
| name                  | ammar                                                       |
| phone_code            | 966                                                         |
| phone                 | 500000022                                                   |
| email                 | [test.oauth01@example.com](mailto:test.oauth01@example.com) |
| policies_accepted     | 1                                                           |
| password              | Admin#123                                                   |
| password_confirmation | Admin#123                                                   |
| google_id             | `random-string-not-a-jwt`                                   |
# Preconditions
API is reachable
# Steps
- Send registration with `google_id` as a random non-JWT string
- Send with a structurally valid JWT but for a different Google Cloud project (`aud` mismatch)
- Send with an expired Google token (valid signature, expired `exp`)
- Capture all responses
# Expected Result
- All three variants rejected — `401` or `422`
- No account created with an unverified Google ID linked
- Server verifies token with Google's tokeninfo endpoint or public keys — not just decodes locally
# Notes
If a random string is accepted as `google_id` and the account is created, the attacker can later authenticate using Google OAuth by claiming that `google_id` — effectively pre-registering with any `google_id` they choose. **Critical** OAuth logic flaw.
# Attachments
