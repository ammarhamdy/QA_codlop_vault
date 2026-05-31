---
tc_id: TC-007
title: Verify Handling of Failed Login Attempts
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - security
  - negative
---

# Test Data
| Field   | Value                  |
| ------- | ---------------------- |
| Email   | registered.user@example.com |
| Password | IncorrectP@ss1         |
| Phone   | +19876543210           |
| OTP     | 000000                 |

# Preconditions
- User is on the website's login page.
- There is a registered user account (e.g., `registered.user@example.com` with `RegisteredP@ss1`).

# Steps
1. Navigate to the login page.
2. Enter a valid registered email (e.g., `registered.user@example.com`).
3. Enter an incorrect password (e.g., `IncorrectP@ss1`).
4. Click the "Login" button.
5. (If applicable for phone login) Enter a valid registered phone number.
6. (If applicable) Request and then enter an incorrect or expired OTP.
7. Click the "Verify OTP" or "Login" button.
8. Attempt to log in with an unregistered email address/phone number.

# Expected Result
- For incorrect credentials (email/password or phone/OTP), an error message like "Invalid credentials" or "Incorrect password" should be displayed.
- Access to the authenticated area should be denied.
- (Optional: After multiple failed attempts) Account lockout or CAPTCHA might be triggered.

# Notes
- Test scenarios for both email/password and phone/OTP login failures.
- Consider testing account lockout policies if implemented.

# Attachments
