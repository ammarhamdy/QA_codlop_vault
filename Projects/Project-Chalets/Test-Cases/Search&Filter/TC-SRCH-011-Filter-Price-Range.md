---
tc_id: TC-SRCH-011
title: Verify Filtering by Minimum and Maximum Price Range Boundaries
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
| Price Filter Range | Min (`السعر من`): `500 ر.س`, Max (`السعر إلى`): `1,200 ر.س` |
| Chalet 1 (Inside Range) | Rate: `800 ر.س` |
| Chalet 2 (At Min Boundary) | Rate: `500 ر.س` |
| Chalet 3 (At Max Boundary) | Rate: `1,200 ر.س` |
| Chalet 4 (Below Range) | Rate: `450 ر.س` |
| Chalet 5 (Above Range) | Rate: `1,500 ر.س` |

# Preconditions
1. User has opened the Filters bottom sheet/modal on the search screen.
2. Listings with diverse price points exist.

# Steps
1. In the Filters modal, enter `500` into "السعر من" (Price From) and `1200` into "السعر إلى" (Price To).
2. Tap "تطبيق الفلاتر" (Apply Filters).
3. Review the filtered results.

# Expected Result
1. Chalets 1, 2, and 3 are displayed in the results (boundary values 500 and 1,200 SAR are inclusively matched).
2. Chalets with prices below 500 SAR (Chalet 4) or above 1,200 SAR (Chalet 5) are excluded from the results.
3. The active filter count updates to reflect the applied price filter.

# Notes
- Requirement: `الفلاتر: ... السعر من/إلى`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
