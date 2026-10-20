---
tc_id: TC-ACC-DEL-003
title: Request Account Deletion via Public Web Page
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field      | Value                                 |
| ---------- | ------------------------------------- |
| web_url    | ((https://tanfeeth.sa/delete-account) |
| user_phone | 0501234567                            |
| otp_code   | 7890                                  |

# Preconditions
-User account is in `active` status in the platform database.
-User has no active bookings or pending payment requests.
- Web server is running and serving technical/legal Blade pages.

# Steps
1. Navigate via a web browser to the public URL `https://tanfeeth.sa/delete-account`.
2. Verify page structure: informational text explaining deletion policies, phone input form, and anti-bot protection.
3. Enter the registered Saudi mobile phone number (`0501234567`).
4. Click "إرسال رمز التحقق" (Send Verification Code).
5. Verify receipt of SMS containing the 4-digit OTP code (`purpose: delete_account`).
6. Enter the OTP code into the verification input field on the web page.
7. Click "تأكيد حذف الحساب" (Confirm Account Deletion).
8. Observe the final confirmation modal / warning prompt and confirm submission.

# Expected Result
- The web page loads cleanly without requiring user authentication/login.
- The request sends CSRF token and passes the hidden encrypted anti-bot timestamp check.
- OTP is delivered to the specified phone number.
- Upon valid OTP submission, the web endpoint executes the deletion workflow matching mobile behavior.
- Account status transitions to `pending_deletion` with `deletion_due_at = now() + 30 days`.
- A success message is displayed on the web page confirming that the account is scheduled for deletion, stating the grace period and restoration instructions.

# Notes
# Attachments


# Script

---
*Last Updated: 2026-10-20 12:20*
