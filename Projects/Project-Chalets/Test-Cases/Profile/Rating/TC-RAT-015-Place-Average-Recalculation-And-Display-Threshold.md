---
tc_id: TC-RAT-015
title: Verify Place Average Calculation Accuracy and Minimum Rating Threshold
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet ID | `CH-602` (`منتجع المرجان`) |
| Admin Min Rating Setting | `1` (Default) |
| Submitted Ratings | Review 1: `5` stars; Review 2: `4` stars; Review 3: `4` stars |
| Expected Average Calculation | `(5 + 4 + 4) / 3 = 4.333...` -> Rounded to 1 decimal place: `4.3` |

# Preconditions
1. Admin system setting has minimum number of ratings before showing average set to `1`.
2. `منتجع المرجان` is a newly listed chalet with zero existing ratings (displays «جديد» or no numeric rating).
3. Three distinct customers have completed eligible stays at `منتجع المرجان`.

# Steps
1. Open the public chalet page for `CH-602` prior to any reviews; check rating display.
2. Customer 1 submits a 5-star rating.
3. Open the public chalet page within 1 minute; observe average score display.
4. Customer 2 submits a 4-star rating.
5. Customer 3 submits a 4-star rating.
6. Open the public chalet page; verify the calculated average rating.
7. (Optional admin setting test): Set minimum threshold to `5` in admin panel; verify if average score hides or reverts to «جديد» / unrated state until 5 ratings exist.

# Expected Result
1. Before any ratings, no numeric average is shown (displays «جديد»).
2. After 1 rating (5★), average displays as `5.0`.
3. After all 3 ratings (5, 4, 4), average is calculated as `4.3` (rounded to one decimal place).
4. The average includes only `Visible` ratings (excludes Withheld, Hidden, or Deleted ratings).
5. Respects the admin-configured minimum rating threshold before displaying the calculated average.

# Notes
- Requirement: UF-14 Notes ("Average: calculated over visible ratings only, one decimal place, updated on every add, delete, or hide. Admin setting: minimum number of ratings before the average is shown (default 1)").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
