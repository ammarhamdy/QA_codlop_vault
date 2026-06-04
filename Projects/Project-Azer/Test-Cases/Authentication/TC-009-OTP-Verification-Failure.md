---
tc_id: TC-009
title: Verify OTP Verification Failure Handling
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - otp
  - negative
run_result: fail
---

# Test Data
| Field       | Value           |
| ----------- | --------------- |
| Phone Number | +19876543210    |
| Invalid OTP | 999999 (example) |
| Expired OTP | (simulated)     |

# Preconditions
- A client account is registered with phone number `+19876543210`.
- User has initiated an OTP request for phone login.

# Steps
1. Navigate to the login page and initiate phone number OTP login for `+19876543210`.
2. Wait for the OTP input field to appear.
3. Enter an incorrect OTP (e.g., `999999`).
4. Click the "Verify OTP" or "Login" button.
5. (Optional) Request an OTP and then wait for it to expire (simulate this by waiting a configured timeout).
6. Enter the now expired OTP.
7. Click the "Verify OTP" or "Login" button.

# Expected Result
- For an incorrect OTP, an error message like "Invalid OTP" or "Incorrect code" should be displayed.
- For an expired OTP, an error message like "OTP expired, please request a new one" should be displayed.
- The system should provide an option to resend the OTP or retry the entry.
- The user should not be logged in.

# Notes
- Simulate OTP expiration by manipulating system time or backend settings during testing.

# Attachments
