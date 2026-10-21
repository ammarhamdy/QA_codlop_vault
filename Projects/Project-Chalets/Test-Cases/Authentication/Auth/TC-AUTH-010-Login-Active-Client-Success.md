---
tc_id: TC-AUTH-010
title: Verify Successful Login of Active Client via Mobile Number and Valid OTP
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `0501111111` (Registered active client) |
| Verification Code (OTP) | Valid SMS OTP |

# Preconditions
1. Client account exists in the platform with status "نشط" (Active) and mobile number `0501111111`.
2. Mobile application is opened on the login screen.
3. SMS gateway is functioning properly.

# Steps
1. Navigate to the Login screen in the mobile application.
2. Enter the registered Mobile Number (`0501111111`).
3. Tap "Log In" / "Send Code".
4. Check the mobile device for the incoming SMS containing the OTP.
5. On the OTP verification screen, input the received verification code.
6. Submit the verification code.

# Expected Result
1. The system validates the OTP successfully.
2. The client is authenticated and an active user session is established.
3. The user is redirected to the application home dashboard with full client permissions (can view owner contact, request viewing, book, pay, add favorites, review).

# Notes
- Verifies core login flow defined in Client.md: `تسجيل الدخول: الجوال - رمز تحقق`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
