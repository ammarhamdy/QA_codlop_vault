---
tc_id: TC-MYTND-006
title: Verify System Behavior When Status Filter Returns No Matching Tenders
priority: Low
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Owner Data | Has 3 `Open` tenders, 0 `Awarded` tenders |
| Selected Filter | `Awarded` |
| Expected View | Filter-specific empty state / no results message |

# Preconditions
1. Tender Owner is authenticated.
2. The owner possesses tenders in certain statuses (e.g., `Open`), but zero tenders with status `Awarded`.
3. User is on the "My Tenders" screen.

# Steps
1. Navigate to the "My Tenders" screen.
2. Select the `Awarded` filter option.
3. Observe the list container.

# Expected Result
1. The list clears previously displayed cards.
2. An appropriate empty filter state message is displayed (e.g., "No tenders found matching this status").
3. The interface does not crash or display tenders from non-matching statuses.
4. Switching back to `Open` or "All" immediately re-populates the list with matching items.

# Notes
- Edge case validation for filtering functionality under alternative flow A2 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
