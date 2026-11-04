---
tc_id: TC-AUTH-009
title: Verify Temporary Submission Lock and Throttle Warning When Max Failed OTP Attempts Are Exceeded
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `+966501234567` |
| Dispatched Valid OTP | `1234` |
| Repeated Incorrect OTPs | `0001`, `0002`, `0003`, `0004`, `0005` (exceeding max failure limit) |
| System Feedback | Throttle warning message / Temporary lock duration |

# Preconditions
1. User has initiated OTP authentication for a valid mobile number.
2. User is on the OTP verification screen.
3. System security throttling rule is active for OTP verification.

# Steps
1. On the OTP verification screen, enter an incorrect 4-digit OTP.
2. Submit and confirm the initial failure response.
3. Re-enter different incorrect 4-digit codes repeatedly until reaching the maximum allowed failure threshold.
4. Attempt an additional OTP entry once the maximum limit is reached.
5. Attempt to submit any OTP during the active cooldown period.

# Expected Result
1. Upon exceeding the maximum allowed failed attempts, the system temporarily locks OTP submission.
2. A throttle warning message is displayed informing the user of the temporary lockout / cooldown period.
3. Input and submission controls are blocked during the cooldown period.
4. Authentication terminates in a failure state with no session established.

# Notes
- Directly validates Alternative Flow E5 in UF-01 (standard security throttling assumption).

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
