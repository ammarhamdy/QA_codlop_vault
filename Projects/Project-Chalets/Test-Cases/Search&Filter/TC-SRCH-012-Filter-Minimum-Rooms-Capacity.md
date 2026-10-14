---
tc_id: TC-SRCH-012
title: Verify Filtering by Minimum Room Count and Guest Capacity
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Room Count Filter | `الغرف (≥ 3)` (At least 3 rooms) |
| Guest Capacity Filter | `الضيوف: 10` (Capacity ≥ 10) |
| Chalet A | Rooms: `4`, Capacity: `12` |
| Chalet B | Rooms: `3`, Capacity: `10` |
| Chalet C | Rooms: `2`, Capacity: `15` |
| Chalet D | Rooms: `4`, Capacity: `8` |

# Preconditions
1. User has opened the Filters modal on the search results screen.

# Steps
1. In the Filters modal, set the Rooms filter to `3` (using the `≥` selector).
2. Set the Guest count filter to `10`.
3. Tap "تطبيق الفلاتر" (Apply Filters).
4. Review the returned results.

# Expected Result
1. Chalets A and B are returned because both meet or exceed the criteria: rooms ≥ 3 and capacity ≥ 10.
2. Chalet C is excluded because its room count (2) is less than 3.
3. Chalet D is excluded because its capacity (8) is less than 10.
4. Filter logic strictly enforces the greater-than-or-equal condition (`≥`).

# Notes
- Requirement: `الفلاتر: ... الضيوف، الغرف (≥)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
