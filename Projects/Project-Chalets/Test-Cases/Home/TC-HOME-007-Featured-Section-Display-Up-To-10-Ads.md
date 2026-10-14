---
tc_id: TC-HOME-007
title: Verify Featured Section Displays Up to Ten Ads with View All Control
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Published Featured Ads in System | 15 active featured chalets |
| Section Maximum Display Limit | `10` listings |
| Action Button | `عرض الكل` (View All) |

# Preconditions
1. 15 active chalets have the "مميز" (Featured) badge/status and are published in the platform.
2. User is on the Home screen of the mobile application.

# Steps
1. Navigate to the Home screen.
2. Scroll to the "المميزة" (Featured) section.
3. Count the number of featured chalet cards rendered horizontally or vertically in this section.
4. Verify the visibility of the "عرض الكل" (View All) button next to the section title.

# Expected Result
1. The "المميزة" section displays exactly 10 featured chalet listing cards, enforcing the maximum display limit of 10 ads on the Home screen.
2. The remaining 5 featured listings are not displayed directly on the Home screen.
3. The "عرض الكل" (View All) button/link is clearly visible and accessible alongside the section title.

# Notes
- Requirement: `قسم «المميزة» حتى 10 إعلانات مع «عرض الكل»`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
