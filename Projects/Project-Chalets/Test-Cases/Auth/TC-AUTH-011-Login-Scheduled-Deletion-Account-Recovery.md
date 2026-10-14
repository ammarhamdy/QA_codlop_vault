---
tc_id: TC-AUTH-011
title: Verify Login and Account Recovery Prompt for Account Scheduled for Deletion
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field                   | Value                                               |
| ----------------------- | --------------------------------------------------- |
| Mobile Number           | `0505555555`                                        |
| Account Status          | `مجدول للحذف` (Scheduled for Deletion)              |
| Scheduled Deletion Date | `2026-11-10 14:00` (Within the 30-day grace period) |
| Verification Code (OTP) | Valid SMS OTP                                       |

# Preconditions
1. The client account with mobile `0505555555` has previously initiated account deletion and is in status "مجدول للحذف".
2. Current date/time is within the 30-day grace period prior to scheduled deletion execution.
3. User opens the mobile application on the Login screen.

# Steps
1. Enter the Mobile Number (`0505555555`) and tap "Log In".
2. Enter the valid OTP received via SMS and submit.
3. Observe the prompt/dialogue displayed upon successful OTP verification.
4. Verify the exact message content: «حسابك مجدول للحذف في {2026-11-10 14:00}. هل تريد استعادته؟».
5. Tap "نعم / استعادة" (Confirm account restoration).
6. Verify account status and dashboard access.

# Expected Result
1. Upon OTP validation, the system immediately presents the recovery dialog displaying the scheduled deletion timestamp: «حسابك مجدول للحذف في {2026-11-10 14:00}. هل تريد استعادته؟».
2. Upon user approval, the account status switches from "مجدول للحذف" to "نشط" (Active).
3. The scheduled deletion timer is cleared.
4. The client enters the application with restored permissions to book, pay, and raise disputes.

# Notes
- Verifies business rule: `إن كان الحساب «مجدولًا للحذف» تظهر رسالة الاستعادة: عند الدخول خلال 30 يومًا: «حسابك مجدول للحذف في {التاريخ}. هل تريد استعادته؟»، وبعد الموافقة تعود الحالة «نشط»`.
- Section 5 Approved Decision: `الحذف والاستعادة من التطبيق فقط، ولا توجد صفحة ويب`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
