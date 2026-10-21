---
tc_id: TC-AUTH-004
title: Verify Registration Rejection When Mobile Number Already Exists in Active Account
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
| Mobile Number | `0501111111` (Existing registered mobile belonging to an active client) |
| Full Name | `ماجد السعيد` |
| National ID | `1000000032` (Valid unique Saudi ID) |
| ID Photo | `national_id.jpg` |

# Preconditions
1. An active client account already exists in the system with mobile number `0501111111`.
2. Mobile app is opened and user is on the Registration screen.

# Steps
1. Navigate to the Registration screen.
2. Enter the duplicate Mobile Number (`0501111111`).
3. Enter valid Full Name (`ماجد السعيد`).
4. Enter valid National ID (`1000000032`).
5. Upload valid ID Photo (`national_id.jpg`).
6. Tap the "Register" button.

# Expected Result
1. The system blocks registration.
2. An error message is displayed indicating that the mobile number is already registered (e.g., "رقم الجوال مسجل بالفعل").
3. No SMS OTP is dispatched for account creation under this mobile number.
4. The user is offered an option to navigate to the Login screen.

# Notes
- Verifies business rule: `معرّف الدخول؛ فريد بين الحسابات غير المحذوفة`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
