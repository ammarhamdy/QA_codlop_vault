---
tc_id: TC-SRCH-010
title: Verify Listings Filtered by Dates Show Only Chalets Available for the Entire Duration
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
| Search Dates | Check-in: `2026-11-15`, Check-out: `2026-11-18` (3 nights: Nov 15, 16, 17) |
| Chalet A (Fully Available) | Status is `متاح` (Available) on Nov 15, 16, and 17 |
| Chalet B (Partially Booked) | Status is `متاح` on Nov 15, `محجوز` (Booked) on Nov 16, `متاح` on Nov 17 |
| Chalet C (Blocked / Inactive) | Status is `غير متاح` (Unavailable) on Nov 15, 16, and 17 |

# Preconditions
1. Chalet A, Chalet B, and Chalet C are published listings in the same city.
2. Their calendar availability statuses are configured as described in Test Data.

# Steps
1. Open the search bar.
2. Select dates `2026-11-15` to `2026-11-18`.
3. Submit the search.
4. Review the search results list.

# Expected Result
1. Chalet A is displayed in the search results because it is available for all 3 nights of the chosen range.
2. Chalet B is completely excluded from the results because it is unavailable on even a single night (Nov 16) within the requested range.
3. Chalet C is excluded from the results.
4. Only chalets whose unit status is `متاح` for the complete uninterrupted duration are displayed.

# Notes
- Requirement: `مع التواريخ لا يظهر إلا الشاليه المتاح طوال المدة كلها (الوحدة متاحة إذا: حالتها «متاح»)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
