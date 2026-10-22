---
tc_id: TC-JOIN-029
title: Verify Applicant Can Edit All Fields and Resubmit with History Rounds Preserved
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Action Taken |
| ----- | ------------ |
| Flagged Field (ID Photo) | Replaced with clear photo `id_clear.jpg` |
| Non-flagged Field (Activity Name) | Updated from `شاليهات النسيم` to `منتجعات النسيم الراقية` |
| Correction Round Number | Round 1 Resubmission |

# Preconditions
1. Application is in status `Needs Completion`.
2. Reviewer notes are displayed in orange frames.

# Steps
1. Upload new photo `id_clear.jpg` to resolve the flagged ID issue.
2. Edit a non-flagged field (change Activity Name to `منتجعات النسيم الراقية`).
3. Tap **"Resubmit Application"** (`إعادة إرسال الطلب`).
4. In database and Admin console, inspect application status and audit history.

# Expected Result
1. The applicant is permitted to edit both flagged fields and unflagged fields.
2. Tapping resubmit transitions application status back to `Under Review` (`قيد المراجعة`).
3. The system permanently archives every review round (notes, applicant responses, updated files) in the historical audit trail.
4. There is no arbitrary deadline or limit on correction rounds unless decided otherwise by reviewer.

# Notes
- Requirement: UF-32 Main Flow Steps 3 to 4 & Notes (Closed questions: "Can the applicant edit only flagged fields, or all fields? All fields. Is there a limit on rounds? NO").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
