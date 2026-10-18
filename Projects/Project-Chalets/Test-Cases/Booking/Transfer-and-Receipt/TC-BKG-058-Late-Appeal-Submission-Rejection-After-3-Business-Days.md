---
tc_id: TC-BKG-058
title: Verify Customer Appeal Submitted After Three Business Days Is Rejected as Late
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
| Customer Account | `CUST-9015` |
| Penalty Notice Date | Monday, `2026-10-12 09:00:00` |
| Appeal Attempt Date | Tuesday, `2026-10-20 11:00:00` (Exceeds 3 business days) |

# Preconditions
1. Penalty was imposed on customer `CUST-9015` on `2026-10-12`.
2. More than three (3) official business days have elapsed since the notice was delivered.

# Steps
1. As Customer `CUST-9015`, navigate to the penalty notice / appeal screen.
2. Observe state of the "Appeal" button.
3. If button is clickable, attempt to submit an appeal.
4. Attempt to invoke the appeal submission API directly: `POST /api/penalties/{id}/appeal`.

# Expected Result
1. The appeal window has expired; the "Appeal" button is disabled or displays an expiration message.
2. If submitted via API, the backend rejects the request with an error indicating that the appeal period has lapsed (exceeded 3 business days).
3. The appeal is rejected as late; no appeal ticket is created.
4. The penalty stands unmodified.

# Notes
- Requirement: UF-05 Error Flow E2 ("Appeal submitted after 3 business days: Rejected as late").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
