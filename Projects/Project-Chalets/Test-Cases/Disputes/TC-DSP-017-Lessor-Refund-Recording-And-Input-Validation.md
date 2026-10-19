---
tc_id: TC-DSP-017
title: Verify Lessor Refund Recording Enforces Mandatory Fields and Rejects Future Dates
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Dispute Reference | `DSP-2026-000112` |
| Status | `Awaiting Refund` (`بانتظار رد المبلغ`) |
| Current System Date | `2026-10-19` |
| Future Date (Invalid) | `2026-10-25` |
| Valid Refund Date | `2026-10-19` |
| Oversized Reference (Invalid) | String of 101 characters |
| Valid Reference | `TRX-9988776655` |
| Refund Amount | `1,500 SAR` |

# Preconditions
1. Dispute `DSP-2026-000112` has status "Awaiting Refund".
2. Lessor has performed the bank transfer outside the platform and opens the "Record Refund" form.

# Steps
1. Attempt to submit the "Refunded" (`تم الرد`) form leaving Amount or Date empty.
2. Enter valid amount (`1,500 SAR`) and enter a future date (`2026-10-25`); attempt submission.
3. Enter an oversized transfer reference containing 101 characters; attempt submission.
4. Enter valid date (`2026-10-19`), valid reference (`TRX-9988776655`), and tap submit.

# Expected Result
1. Empty amount or date blocks form submission.
2. A future refund date is rejected with a validation error indicating that the refund date cannot be in the future (cannot be after today).
3. A transfer reference exceeding 100 characters is rejected.
4. Upon entering valid inputs, the record is accepted and dispute status transitions to **"Awaiting Customer Confirmation"** (`بانتظار تأكيد العميل`).
5. Customer is notified that the lessor recorded the refund.

# Notes
- Requirement: UF-16 Steps 3–4 and Error Flows E1, E2, E3.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
