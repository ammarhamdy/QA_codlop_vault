---
tc_id: TC-PKG-008
title: Verify Form Validation Blocks Submission When Receipt File Is Missing
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Receipt Attachment | None (Empty) |
| Transfer Date | Today's Date |
| Validation Message | `«ارفع إيصال التحويل»` |

# Preconditions
1. Lessor is on the bank transfer submission form for an active payment request.

# Steps
1. Leave the receipt file upload area empty.
2. Select today's date in the transfer date picker.
3. Tap **Submit** (`إرسال الإيصال`).
4. Observe system response.

# Expected Result
1. The submission is blocked immediately.
2. The field validation error `«ارفع إيصال التحويل»` is displayed adjacent to the upload control.
3. The payment request status remains `Awaiting Payment` and is not forwarded to Finance.

# Notes
- Requirement: UF-43 Error Flow E1 ("No receipt attached -> «ارفع إيصال التحويل»").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
