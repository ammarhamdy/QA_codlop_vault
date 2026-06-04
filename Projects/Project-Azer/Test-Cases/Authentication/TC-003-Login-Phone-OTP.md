---
tc_id: TC-003
title: Verify Client Login with Phone Number and OTP
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - login
  - otp
run_result: pass
---

# Test Data
| Field       | Value           |
| ----------- | --------------- |
| Phone Number | +19876543210    |
| OTP         | 123456 (example) |

# Preconditions
- A client account is already registered with phone number `+19876543210`.
- User is on the website's login page with phone number OTP option available.
- The system is configured to send OTPs to the registered phone number.

# Steps
1. Navigate to the login page.
2. Select the option to log in with a Phone Number.
3. Enter the registered Phone Number (e.g., `+19876543210`).
4. Click the "Send OTP" or similar button.
5. Wait for the OTP to be received (e.g., via SMS).
6. Enter the valid OTP (e.g., `123456`) into the OTP field.
7. Click the "Verify OTP" or "Login" button.

# Expected Result
- The system should successfully authenticate the user.
- The user should be redirected to the authenticated area.
- The user's session should be active.

# Notes
- OTP generation and delivery mechanism should be tested separately.

# Attachments
