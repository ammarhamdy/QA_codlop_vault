---
tc_id: TC-RAT-023
title: Verify Reported Rating Remains Visible When Admin Dismisses Report as Invalid
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review ID | `REV-9945` |
| Chalet ID | `CH-707` (`شاليه الريف`) |
| Report Status Decision | `Invalid` / `Dismissed` (`بلاغ غير صحيح / مرفوض`) |

# Preconditions
1. Rating `REV-9945` is currently `Visible` on `شاليه الريف`.
2. A report was lodged against `REV-9945`.
3. Admin is reviewing the report queue in Admin Dashboard.

# Steps
1. Open the report details for `REV-9945`.
2. Review the reported comment text and rating context.
3. Classify the report as **Invalid / Rejected** (`بلاغ غير صحيح`).
4. Save the decision and close the report ticket.
5. Check the public place page for `شاليه الريف`.
6. Inspect the chalet's average rating and the author's rating view.

# Expected Result
1. The report status is marked as closed/invalid.
2. The rating status remains `Visible`.
3. The review remains publicly visible on `شاليه الريف` without interruption.
4. No changes occur to the average score, and no negative notification is sent to the author.

# Notes
- Requirement: UF-19 Alternative Flow A1 ("Report is not classified valid -> Rating stays Visible").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
