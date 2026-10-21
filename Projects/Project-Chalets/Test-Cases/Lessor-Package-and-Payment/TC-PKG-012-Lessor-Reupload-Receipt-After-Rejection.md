---
tc_id: TC-PKG-012
title: Verify Re-uploading Receipt on Rejected Request Returns Status to Awaiting Approval
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
| Payment Request ID | `PAY-2026-000106` |
| Initial Status | `Rejected` (`مرفوض`) |
| Rejection Reason Displayed | `«رُفض إيصالك: إيصال غير واضح»` |
| New Receipt File | `new_clear_receipt.jpg` |
| Updated Status | `Awaiting Approval` (`بانتظار الاعتماد`) |

# Preconditions
1. Payment request `PAY-2026-000106` was rejected by Finance with reason "Receipt unclear".
2. The request status is `Rejected`.

# Steps
1. As lessor, open "Payment Request Status" and select `PAY-2026-000106`.
2. Review the rejection notice and reason.
3. Tap **"Upload New Receipt"** (`رفع إيصال جديد`).
4. Attach `new_clear_receipt.jpg` and select valid transfer date.
5. Tap Submit.
6. Check the updated status of `PAY-2026-000106`.
7. In Finance portal, verify the request appears in the review queue.

# Expected Result
1. The system permits re-uploading a new receipt on the exact same payment request ID `PAY-2026-000106`.
2. Status returns to `Awaiting Approval` (`بانتظار الاعتماد`).
3. Finance review queue shows the updated request with the new receipt file for review.

# Notes
- Requirement: UF-43 Alternative Flow A2 & UF-44 Flow A2.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
