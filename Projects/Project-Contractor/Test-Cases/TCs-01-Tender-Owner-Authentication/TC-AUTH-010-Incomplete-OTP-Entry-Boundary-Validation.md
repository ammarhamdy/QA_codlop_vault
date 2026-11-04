---
tc_id: TC-AUTH-010
title: Verify Input Boundary Handling and Submission Prevention for Incomplete OTP Entry
priority: Medium
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
| Valid OTP Length | Exactly 4 numeric digits |
| Incomplete Inputs | 1 digit (`5`), 2 digits (`58`), 3 digits (`582`) |

# Preconditions
1. User has entered a valid mobile number and received a 4-digit OTP via SMS.
2. User is on the OTP verification screen.

# Steps
1. Navigate to the OTP verification screen.
2. Enter only 1 digit (`5`) into the OTP input fields.
3. Observe if auto-submission is triggered, or if the manual submit button (if applicable) is enabled.
4. Enter a second digit (`8`) to make it 2 digits (`58`).
5. Observe the submission state.
6. Enter a third digit (`2`) to make it 3 digits (`582`).
7. Attempt to submit the incomplete 3-digit code.

# Expected Result
1. The system requires exactly 4 digits to consider the OTP input complete.
2. For 1, 2, or 3 digits entered, automatic submission is not triggered.
3. If a manual submit button is present, it remains disabled or blocked until all 4 digits are entered.
4. No network verification request for an incomplete code is sent to the server.

# Notes
- Validates boundary condition for 4-digit OTP entry defined in Main Flow Steps 3 and 4 of UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
