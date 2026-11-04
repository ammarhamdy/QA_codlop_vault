---
tc_id: TC-AUTH-005
title: Verify OTP Verification Screen Display and Active Countdown Timer Behavior
priority: Medium
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
| Expected Screen | OTP Verification Screen |
| Expected Input Type | 4-digit numeric input |
| Timer Element | Countdown timer (e.g., 60 seconds decrementing) |

# Preconditions
1. The Tender Owner authentication screen (`SCR-AUTH-01`) is open.
2. An active mobile number is available.
3. SMS gateway is functioning normally.

# Steps
1. Enter a valid mobile number (`+966501234567`).
2. Click the "Send OTP" button.
3. Inspect the newly loaded OTP verification screen.
4. Verify the input fields provided for entering the 4-digit OTP.
5. Verify the countdown timer display and observe it ticking downwards.
6. Verify the state of the "Resend OTP" button/link while the countdown is actively running.

# Expected Result
1. System successfully transitions to the OTP verification screen.
2. The screen clearly presents 4-digit OTP input fields.
3. An active input countdown timer is displayed and decrements each second.
4. The "Resend OTP" action is disabled or hidden while the countdown timer is active.

# Notes
- Validates Main Flow Step 2 and timer constraint preceding Alternative A1 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
