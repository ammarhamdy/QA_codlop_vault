---
tc_id: TC-AUTH-008
title: Verify Handling and Redirection When Expired OTP Is Submitted
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
| Dispatched OTP | `4567` |
| OTP Expiration State | Expired past code validity window |
| Expected Error Message | `"Verification code has expired. Please request a new code."` |

# Preconditions
1. User has entered a valid mobile number and received a 4-digit OTP.
2. The dispatched OTP (`4567`) has exceeded its server-side validity lifetime.
3. User is on the OTP verification screen.

# Steps
1. Navigate to the OTP verification screen after requesting an OTP.
2. Wait until the OTP code lifetime expires.
3. Enter the expired 4-digit code (`4567`) into the verification fields.
4. Submit the code.
5. Observe the error response and navigation state.

# Expected Result
1. The system detects that the submitted OTP has expired.
2. The error message `"Verification code has expired. Please request a new code."` is displayed.
3. Authentication fails and no session token is generated.
4. The system prompts the user to request a new code and resumes at Step 2.

# Notes
- Directly validates Alternative Flow E4 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
