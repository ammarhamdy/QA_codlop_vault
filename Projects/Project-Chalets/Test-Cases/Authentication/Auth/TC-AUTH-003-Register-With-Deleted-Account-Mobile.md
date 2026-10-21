---
tc_id: TC-AUTH-003
title: Verify Client Registration Using Mobile Number of Previously Deleted Account
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field                   | Value                                                                                         |
| ----------------------- | --------------------------------------------------------------------------------------------- |
| Mobile Number           | `0503333333` (Previously belonged to an account whose deletion was executed by the scheduler) |
| Full Name               | `عبدالله خالد الدوسري`                                                                        |
| National ID             | `1000000024` (Valid Saudi ID)                                                                 |
| ID Photo                | `national_id.jpg`                                                                             |
| Verification Code (OTP) | Valid SMS OTP                                                                                 |

# Preconditions
1. An account registered with mobile number `0503333333` underwent the scheduled deletion process and its status is now "محذوف" (Deleted - soft-deleted with mobile number irreversibly hashed).
2. Mobile app is launched on the test device and user is on the Registration screen.

# Steps
1. Navigate to the Registration screen.
2. Enter the mobile number previously used by the deleted account (`0503333333`).
3. Enter new Full Name (`عبدالله خالد الدوسري`).
4. Enter valid National ID (`1000000024`).
5. Upload valid ID Photo (`national_id.jpg`).
6. Tap the "Register" button.
7. Enter the valid OTP received via SMS.
8. Submit the verification code.

# Expected Result
1. The registration is permitted and does not trigger an "already registered" error.
2. A new independent client account is created with status "نشط" (Active).
3. The new client has a fresh profile without inheriting previous bookings, chats, or unlinked records.

# Notes
- Explicitly documented business rule: `يمكن التسجيل برقم حساب محذوف كحساب جديد` and `التسجيل بنفس الرقم: مسموح كحساب جديد`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
