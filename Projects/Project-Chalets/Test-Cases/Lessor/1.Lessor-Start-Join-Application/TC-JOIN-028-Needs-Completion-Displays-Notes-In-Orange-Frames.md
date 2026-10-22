---
tc_id: TC-JOIN-028
title: Verify Needs Completion Displays Reviewer Notes in Orange Frames Above Fields
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Application Status | `Needs Completion` (`يحتاج استكمال`) |
| Notification Text Pattern | `«طلبك يحتاج استكمال: 2 ملاحظات»` |
| Flagged Field 1 | National ID Photo: Note = `«الصورة غير واضحة، يرجى إعادة رفع صورة واضحة»` |
| Flagged Field 2 | Property Management Proof: Note = `«الصك المرفوع منتهي الصلاحية أو غير مقروء»` |

# Preconditions
1. Reviewer evaluated application `APP-2026-000503` and returned it with 2 specific notes on ID Photo and Property Proof.
2. Application status is `Needs Completion`.

# Steps
1. Observe receipt of notification `«طلبك يحتاج استكمال: 2 ملاحظات»`.
2. Tap the notification to open the application.
3. Inspect the form interface and note placement.
4. Verify the styling of the reviewer notes.

# Expected Result
1. The notification states the exact count of requested corrections (`2 ملاحظات`).
2. Inside the application, each flagged field prominently displays its specific reviewer note directly above the field input in an orange frame (`إطار برتقالي`).
3. Non-flagged fields remain visible and accessible.

# Notes
- Requirement: UF-32 Main Flow Steps 1 to 2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
