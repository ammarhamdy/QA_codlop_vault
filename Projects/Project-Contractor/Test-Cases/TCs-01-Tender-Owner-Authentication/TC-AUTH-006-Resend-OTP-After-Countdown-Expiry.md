---
tc_id: TC-AUTH-006
title: Verify Resend OTP Functionality After Countdown Timer Expires
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `+966501234567` |
| First Generated OTP | `1111` (expired/unreceived) |
| Second Generated OTP | `2222` (newly dispatched) |
| Action Button | `"Resend OTP"` |

# Preconditions
1. User has initiated OTP generation with a valid mobile number (`+966501234567`).
2. User is on the OTP verification screen.
3. SMS gateway is functional.

# Steps
1. Navigate to the OTP verification screen by requesting an OTP for a valid mobile number.
2. Allow the countdown timer to run until it reaches zero (00:00).
3. Observe the state change of the "Resend OTP" button.
4. Click the newly enabled "Resend OTP" button.
5. Check mobile phone for delivery of the new OTP SMS.
6. Verify the countdown timer resets and starts counting down again.
7. Enter the newly generated 4-digit OTP.
8. Submit the verification code.

# Expected Result
1. The "Resend OTP" button becomes enabled as soon as the countdown timer reaches zero.
2. Clicking "Resend OTP" generates and dispatches a new 4-digit OTP via SMS.
3. The countdown timer restarts from its initial duration.
4. The system resumes at Step 3 (awaiting 4-digit OTP entry).
5. Entering the new 4-digit OTP successfully validates and authenticates the user.

# Notes
- Directly validates Alternative Flow A1 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
