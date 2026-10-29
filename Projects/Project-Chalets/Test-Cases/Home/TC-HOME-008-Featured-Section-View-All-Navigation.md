---
tc_id: TC-HOME-008
title: Verify Tapping View All in Featured Section Navigates to Full Featured Listings
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Action Element | `عرض الكل` (View All) button in "المميزة" section |
| Target Destination | Full Featured Listings / Search Results filtered for Featured chalets |

# Preconditions
1. More than 10 featured chalets are active in the system.
2. User is on the Home screen viewing the "المميزة" section.

# Steps
1. Locate the "المميزة" section on the Home screen.
2. Tap the "عرض الكل" (View All) button.
3. Observe screen navigation and loaded content.

# Expected Result
1. The application transitions from the Home screen to the dedicated full list / search results page.
2. The page loads all published featured chalets (including those beyond the initial 10 shown on the Home screen).
3. The user can browse through the complete list of featured places.

# Notes
- Requirement: `قسم «المميزة» حتى 10 إعلانات مع «عرض الكل»`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
