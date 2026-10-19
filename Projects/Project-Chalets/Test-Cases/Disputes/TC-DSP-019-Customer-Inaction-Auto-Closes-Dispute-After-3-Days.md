---
tc_id: TC-DSP-019
title: Verify System Sends Reminder After 1 Day and Auto-Closes Dispute After 3 Business Days of Inaction
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Dispute Reference | `DSP-2026-000115` |
| Initial Status | `Awaiting Customer Confirmation` |
| Reminder Timing | After `1 Business Day` of customer silence |
| Auto-Closure SLA | After `3 Business Days` of customer silence |
| Final Auto Status | `Received (Auto-closed)` (`تم الاستلام - إغلاق تلقائي`) |

# Preconditions
1. Lessor recorded refund on dispute `DSP-2026-000115` on Sunday `2026-10-18 10:00:00`.
2. Dispute status is "Awaiting Customer Confirmation".
3. Customer takes no action (neither confirms nor denies receipt).

# Steps
1. Advance system time by 1 business day (Monday `2026-10-19 10:00:00`).
2. Verify if reminder push notification is dispatched to the customer.
3. Advance system time past 3 business days (Wednesday `2026-10-21 10:00:01`) with no response from the customer.
4. Run the scheduled auto-closure worker job.
5. Inspect the updated dispute status and closure resolution notes.

# Expected Result
1. After 1 business day of silence, the customer receives an automated reminder to confirm or deny receipt of the refund.
2. If the customer does not reply within 3 business days of the lessor's record, the dispute closes automatically.
3. The final resolution status is recorded as **"Received (Auto-closed)"** (`تم الاستلام - إغلاق تلقائي`).
4. Both parties are notified that the dispute has been closed automatically.

# Notes
- Requirement: UF-16 Alternative Flows A2, A3 ("Customer does not reply after 1 business day: Reminder sent to the customer. Customer does not reply within 3 business days: Dispute closes automatically as 'Received (Auto-closed)'").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
