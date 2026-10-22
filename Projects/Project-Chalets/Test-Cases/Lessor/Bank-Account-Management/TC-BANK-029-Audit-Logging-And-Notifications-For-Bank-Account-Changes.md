---
tc_id: TC-BANK-029
title: Audit Logging & Notifications - Masked IBAN and Before/After Records for Bank Account Modifications
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Trigger Action | SMS Notification Text | Audit Log Content |
| -------------- | -------------------- | ----------------- |
| Add / Edit / Delete / Assign | `تم تغيير حساب بنكي في حسابك على تنفيذ` | Detailed before & after values, IBAN partially masked (e.g., `SA03...7519`) |

# Preconditions
1. Lessor performs a bank account change (e.g., editing an existing account).
2. Tester has administrative or database access to view audit logs and notification dispatches.

# Steps
1. Edit an existing bank account and successfully complete OTP validation.
2. Check the lessor's mobile SMS inbox.
3. Check the lessor's in-app notification center.
4. Inspect the system audit log repository for this transaction.
5. Verify whether the full IBAN or a partially masked IBAN is stored in the audit line.

# Expected Result
1. An SMS containing the exact text `تم تغيير حساب بنكي في حسابك على تنفيذ` is promptly received on the lessor's registered mobile number.
2. An in-app notification is delivered to the lessor's notification center.
3. An audit log entry is recorded containing:
   - Timestamp and actor identifier.
   - Action type.
   - Previous values and updated values.
   - The IBAN is stored partially masked to protect sensitive financial details.

# Notes
- Requirement: UF-76 (Main Flow Steps 4-6; Notes).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
