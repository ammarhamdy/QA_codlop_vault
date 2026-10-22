---
tc_id: TC-JOIN-031
title: Verify Application Rejection Displays Reviewer Free-Text Reason
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
| Application Final Decision | `Rejected` (`مرفوض`, Final) |
| Reviewer Rejection Reason | `المكان غير مطابق لمعايير السلامة والنظافة المطلوبة للمعاينة الميدانية` |

# Preconditions
1. Join application `APP-2026-000505` is under administrative review.
2. Reviewer determines the application does not qualify.

# Steps
1. As Reviewer, click **Reject** on `APP-2026-000505`.
2. Enter the custom free-text reason: `المكان غير مطابق لمعايير السلامة والنظافة المطلوبة للمعاينة الميدانية`.
3. Confirm the rejection decision.
4. As the applicant, open the application status screen.
5. Review the decision details and displayed rejection explanation.

# Expected Result
1. Application status transitions to `Rejected` (`مرفوض`, final).
2. The applicant receives notification of the rejection.
3. The tracking screen prominently displays the exact free-text justification written by the reviewer.
4. An action button **"Apply Again"** (`التقديم مرة أخرى`) is presented to the user.

# Notes
- Requirement: UF-33 Alternative Flow A1 & Notes (Closed question: "Is the rejection reason a fixed list or free text? Free text").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
