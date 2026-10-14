---
tc_id: TC-SRCH-015
title: Verify Active Filters Counter Display and Clear All Functionality
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Applied Filters | 1. Price (`السعر من/إلى`)<br>2. Rooms (`الغرف ≥ 3`)<br>3. Amenity (`مسبح داخلي`) |
| Expected Counter Value | `3` |
| Reset Action | `مسح الكل` (Clear All) |

# Preconditions
1. User has navigated to the search results and opened the Filters modal.

# Steps
1. Apply 3 distinct filters: set a Price range, select Rooms ≥ 3, and select Amenity "مسبح داخلي".
2. Observe the filter icon / header badge indicating active filters.
3. Apply filters and verify the counter on the search results screen.
4. Re-open the Filters modal and tap "مسح الكل" (Clear All).
5. Tap "تطبيق" (Apply).

# Expected Result
1. The filter indicator displays a counter matching exactly the number of active filter criteria (e.g. badge showing `3`).
2. Tapping "مسح الكل" resets all filter inputs, checkboxes, and sliders back to their default empty states.
3. The counter disappears or resets to 0.
4. Applying the cleared filters refreshes search results to show the full unfiltered listing dataset.

# Notes
- Requirement: `مع عداد للفلاتر المفعّلة و «مسح الكل»`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
