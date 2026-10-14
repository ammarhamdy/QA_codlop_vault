---
tc_id: TC-SRCH-017
title: Verify Empty Results State Copy and Action Buttons When No Places Match
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
| Conflicting Search Criteria | Highly restrictive filters resulting in 0 matches |
| Expected Message | `لا توجد أماكن مطابقة. جرّب تغيير التواريخ أو إزالة بعض الفلاتر` |
| Primary Action Button 1 | `مسح الفلاتر` (Clear Filters) |
| Primary Action Button 2 | `تغيير التواريخ` (Change Dates) |

# Preconditions
1. User applies a combination of filters and dates that yields 0 matching chalets in the database.

# Steps
1. Apply the conflicting search and filter parameters.
2. View the resulting search screen.
3. Verify the empty state message.
4. Verify the visibility and function of the two action buttons.
5. Tap "مسح الفلاتر" and observe system response.
6. Re-execute the empty search, then tap "تغيير التواريخ" and observe system response.

# Expected Result
1. The screen displays the exact empty state text: `لا توجد أماكن مطابقة. جرّب تغيير التواريخ أو إزالة بعض الفلاتر`.
2. Both action buttons `مسح الفلاتر` and `تغيير التواريخ` are clearly rendered.
3. Tapping `مسح الفلاتر` immediately resets applied filter criteria and refreshes the search.
4. Tapping `تغيير التواريخ` directly re-opens the Gregorian date picker allowing the user to select alternative dates.

# Notes
- Requirement: `لا نتائج: «لا توجد أماكن مطابقة. جرّب تغيير التواريخ أو إزالة بعض الفلاتر» + مسح الفلاتر تغيير التواريخ`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
