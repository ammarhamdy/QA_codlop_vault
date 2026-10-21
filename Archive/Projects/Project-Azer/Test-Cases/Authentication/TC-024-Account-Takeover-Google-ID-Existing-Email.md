---
tc_id: TC-024
title: Verify Attacker Cannot Take Over Existing Account by Supplying Victim Email With Arbitrary google_id
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

| Field                 | Value                                           |
| --------------------- | ----------------------------------------------- |
| name                  | attacker                                        |
| phone_code            | 966                                             |
| phone                 | 500000020                                       |
| email                 | [victim@example.com](mailto:victim@example.com) |
| policies_accepted     | 1                                               |
| password              | Attacker#999                                    |
| password_confirmation | Attacker#999                                    |
| google_id             | attacker-controlled-google-token                |
# Preconditions
- A victim account exists with email `victim@example.com` registered via email/password
- Attacker does NOT have access to the victim's password or Google account
# Steps
- Send registration with victim's email but attacker's phone and a new `google_id`
- Capture the response
- If registration returns `201`, attempt to log in with the attacker's password
- Attempt to log in with the original victim's password
- Check if the victim's original session is invalidated
# Expected Result
- HTTP `422` — email already in use, registration blocked
- Victim's account data, password, and session remain completely unaffected
- No google_id linkage occurs on an existing account via the register endpoint
# Notes
If `201` is returned and the attacker can now log into the victim's account, this is a **P0 Account Takeover** vulnerability. Immediate escalation required.
# Attachments
