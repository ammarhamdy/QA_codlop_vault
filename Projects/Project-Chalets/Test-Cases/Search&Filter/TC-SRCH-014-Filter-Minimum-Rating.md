---
tc_id: TC-SRCH-014
title: Verify Filtering by Minimum Rating Threshold
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
| Rating Filter Selection | `التقييم (≥ 4.0)` |
| Chalet A | Average Rating: `4.5` |
| Chalet B | Average Rating: `4.0` (Boundary value) |
| Chalet C | Average Rating: `3.8` |
| Chalet D | Average Rating: `جديد` (New, unrated) |

# Preconditions
1. User opens the Filters modal on search results.

# Steps
1. In the Rating section, select `4.0` stars or higher (`≥ 4.0`).
2. Tap "تطبيق الفلاتر" (Apply Filters).
3. Review the filtered results.

# Expected Result
1. Chalets A (4.5) and B (4.0) are displayed in the results, verifying that the boundary rating of 4.0 is included.
2. Chalet C (3.8) is excluded because its rating is below 4.0.
3. Unrated chalets designated as `جديد` (Chalet D) are excluded when a minimum rating threshold is applied.

# Notes
- Requirement: `الفلاتر: ... التقييم (≥)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
