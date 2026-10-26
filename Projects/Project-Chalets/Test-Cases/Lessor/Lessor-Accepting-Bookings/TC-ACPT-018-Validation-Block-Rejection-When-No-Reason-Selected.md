---
tc_id: TC-ACPT-018
title: Validation - Block Rejection Submission When No Reason is Selected
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Reason Selected | None (all unselected) |
| Expected Validation Message | `اختر سبب الرفض` |

# Preconditions
1. Lessor is in the reject booking flow on a pending booking.
2. The list of rejection reasons is shown.

# Steps
1. Ensure none of the reason options are selected.
2. Tap the rejection submit button.
3. Observe the validation response.

# Expected Result
1. The submission is blocked.
2. The exact Arabic validation error message `اختر سبب الرفض` is prominently displayed.
3. The booking status remains "Awaiting Lessor Confirmation".

# Notes
- Requirement: UF-06 (Error Flow E1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
