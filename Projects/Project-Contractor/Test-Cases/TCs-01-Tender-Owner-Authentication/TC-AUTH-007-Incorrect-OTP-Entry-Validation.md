---
tc_id: TC-AUTH-007
title: Verify System Rejection, Input Clearing, and Error Handling for Incorrect OTP
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `+966501234567` |
| Dispatched Valid OTP | `3579` |
| Entered Incorrect OTP | `9999` |
| Expected Error Message | `"Invalid verification code. Please check and try again."` |

# Preconditions
1. User has entered a valid mobile number and clicked "Send OTP".
2. User is on the OTP verification screen.
3. A valid 4-digit OTP (`3579`) was dispatched to the mobile number.

# Steps
1. On the OTP verification screen, enter an incorrect 4-digit OTP (`9999`).
2. Submit or allow automatic submission upon entering the 4th digit.
3. Observe system response, error message, and input fields state.

# Expected Result
1. The system rejects the entered OTP.
2. The error message `"Invalid verification code. Please check and try again."` is displayed.
3. The OTP input fields are cleared to allow re-entry.
4. User remains on Step 3 (OTP verification screen).
5. Authentication fails and no session token is established.

# Notes
- Directly validates Alternative Flow E3 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
