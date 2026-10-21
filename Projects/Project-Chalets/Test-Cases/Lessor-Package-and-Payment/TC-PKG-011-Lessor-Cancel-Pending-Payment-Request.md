---
tc_id: TC-PKG-011
title: Verify Lessor Can Cancel Payment Request Before Final Decision
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Payment Request ID | `PAY-2026-000105` |
| Initial Status | `Awaiting Approval` (Receipt uploaded) |
| Post-Cancellation Status | `Cancelled` (`ملغي`) |
| Finance Review Tag | `يحتاج معالجة مبلغ` |

# Preconditions
1. Lessor submitted bank transfer receipt for `PAY-2026-000105`.
2. Status is currently `Awaiting Approval` and Finance has not yet made a decision.

# Steps
1. In the lessor app, navigate to "Payment Request Status" (`حالة طلب الدفع`).
2. Open request `PAY-2026-000105`.
3. Tap **"Cancel Request"** (`إلغاء الطلب`).
4. Confirm the cancellation prompt.
5. In the lessor app, verify the status of the request and the option to choose a new package.
6. In the Admin / Finance portal, open the cancelled request record.

# Expected Result
1. The payment request status transitions to `Cancelled` (`ملغي`), which is a final status.
2. The cancellation frees the lessor to initiate a new package payment request without pending-block errors.
3. In Finance admin view, because a receipt was previously uploaded, the request and receipt remain accessible with tag `يحتاج معالجة مبلغ` so Finance can verify and refund or clear the transferred funds.

# Notes
- Requirement: UF-43 Alternative Flow A1 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
