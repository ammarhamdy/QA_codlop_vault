---
tc_id: TC-ACC-DEL-001
title: Request Account Deletion via Mobile App Profile
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - smoke
  - regression
---

# Test Data
| Field      | Value         |
| ---------- | ------------- |
| user_phone | +966501234567 |
| user_name  | أحمد السالم   |
| otp_code   | ****          |


# Preconditions
-User account exists in database with status `active.
-User has no active bookings (no `held`, `awaiting_confirmation`, or upcoming `confirmed`) or no pending payment requests (`PAY-...`) or has no open cancellation requests.

# Steps
1. Open the mobile application and navigate to the "حسابي" (My Account) tab.
2. Scroll to the account actions section and tap "حذف الحساب" (Delete Account).
3. Verify that the informational screen appears detailing what data is permanently deleted and what data is legally retained.
4. Review the blocker check status (verifying no active blockers exist).
5. Tap "متابعة حذف الحساب" (Proceed with Account Deletion).
6. Wait for the 4-digit OTP SMS to arrive on the registered phone number.
7. Enter the received OTP code in the verification input field.
8. Tap the confirmation button inside the red dialog.

# Expected Result
- The informational screen displays clear transparency details regarding deleted items (devices, favorites , notification preferences) and retained items (financial history, reviews).
- OTP SMS is delivered to `+966501234567` within 30 seconds.
- User's account status in the database transitions from `active` to `pending_deletion`.
- Field `deletion_due_at` is set to `now() + 30 days` (by default).
-  An immediate internal in-app notification is dispatched containing the scheduled deletion date and restoration instructions.
- The active session is terminated, and the user is logged out to the guest screen.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-20 12:20*
