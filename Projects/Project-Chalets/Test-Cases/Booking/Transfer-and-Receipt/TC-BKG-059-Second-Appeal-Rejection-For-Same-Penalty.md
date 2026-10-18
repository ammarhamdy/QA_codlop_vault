---
tc_id: TC-BKG-059
title: Verify System Blocks Submission of a Second Appeal for the Same Penalty
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Account | `CUST-9016` |
| Penalty Reference | `PEN-2026-000088` |
| Initial Appeal | Submitted and Rejected/Under Review |
| Second Appeal Attempt | Customer attempts to submit another appeal for `PEN-2026-000088` |

# Preconditions
1. Customer `CUST-9016` has a penalty `PEN-2026-000088`.
2. Customer already submitted an appeal for this penalty (status: under review or decided).
3. The 3-business-day window may or may not still be open.

# Steps
1. Navigate to the account penalty section for `PEN-2026-000088`.
2. Verify the appeal status and action buttons on screen.
3. Attempt to trigger a second appeal via UI form.
4. Attempt to send a second appeal payload via direct API endpoint: `POST /api/penalties/PEN-2026-000088/appeal`.

# Expected Result
1. The UI indicates that an appeal has already been registered for this penalty and disables further submissions.
2. The backend API checks prior appeal history and rejects the second appeal with a message: only one appeal is permitted per penalty.
3. No duplicate or secondary appeal record is accepted.

# Notes
- Requirement: UF-05 Error Flow E1 ("Customer submits a second appeal for the same penalty: Rejected, only one appeal is allowed").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
