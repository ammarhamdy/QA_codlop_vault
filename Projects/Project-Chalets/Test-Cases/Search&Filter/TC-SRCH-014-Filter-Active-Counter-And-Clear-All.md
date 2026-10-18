---
tc_id: TC-SRCH-014
title: Verify Active Filters Counter Increments Accurately and Clear All Resets All Filters
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
| Filter 1 Selection | City: `الرياض` |
| Filter 2 Selection | Price Range: `500 - 2500 ر.س` |
| Filter 3 Selection | Rooms: `3` |
| Filter 4 Selection | Amenity: `مسبح` |
| Action | `مسح الكل` (Clear All) |

# Preconditions
1. User is on the Search & Filters screen with all filter values cleared.

# Steps
1. Verify the initial state of the active filters counter (zero or hidden).
2. Select City (`الرياض`). Observe the active filter counter.
3. Set Price Range (`500 - 2500`). Observe the counter.
4. Select Rooms count (`3`). Observe the counter.
5. Select Amenity (`مسبح`). Observe the counter.
6. Verify that the counter displays `4`.
7. Tap the `مسح الكل` (Clear All) button.
8. Inspect all filter inputs and the active filters counter.

# Expected Result
1. The active filter counter increments accurately by 1 for each active filter category applied.
2. The counter prominently indicates the total number of currently active filters (e.g. badge showing `4`).
3. Tapping `مسح الكل` immediately resets all inputs (city, price, rooms, amenities) to default blank/unselected states.
4. The active filters counter resets to 0 or disappears.

# Notes
- Requirement: `الفلاتر: مع عداد للفلاتر المفعّلة و «مسح الكل».`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
