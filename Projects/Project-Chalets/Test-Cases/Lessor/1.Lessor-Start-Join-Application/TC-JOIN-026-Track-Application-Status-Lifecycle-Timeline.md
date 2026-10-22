---
tc_id: TC-JOIN-026
title: Verify Application Lifecycle Status Tracking and Milestone Timeline Display
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Lifecycle Milestone | System Status Value | Arabic Display Label |
| ------------------- | ------------------- | -------------------- |
| Milestone 1 | `Submitted` | `مُرسل` |
| Milestone 2 | `Under Review` | `قيد المراجعة` |
| Milestone 3 | `Inspection Scheduled` | `المعاينة مجدولة` |
| Milestone 4 | `Under Inspection` | `قيد المعاينة` |
| Milestone 5 | `Inspection Complete` | `اكتملت المعاينة` |
| Milestone 6 | `Accepted` / `Rejected` | `مقبول / مرفوض` |

# Preconditions
1. User has submitted join application `APP-2026-000502`.
2. Admin / Reviewer and Inspector perform progressive actions on the application.

# Steps
1. As the applicant, open the join application tracking screen.
2. Verify initial status `Submitted`.
3. Reviewer opens application in Admin portal -> Observe status moves to `Under Review`.
4. Reviewer assigns inspector and schedules appointment -> Observe status moves to `Inspection Scheduled`.
5. Inspector records first site inspection result -> Observe status moves to `Under Inspection`.
6. Inspector finishes inspection checklist for all places -> Observe status moves to `Inspection Complete`.
7. Refresh or view the applicant tracking timeline at each step.

# Expected Result
1. The tracking timeline visually advances through each distinct milestone:
   `Submitted` $\to$ `Under Review` $\to$ `Inspection Scheduled` $\to$ `Under Inspection` $\to$ `Inspection Complete`.
2. Specific internal inspector credentials or internal scheduling details are kept private (managed outside the app).
3. The applicant sees accurate status feedback at each phase.

# Notes
- Requirement: UF-31 Main Flow Steps 1 to 6 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
