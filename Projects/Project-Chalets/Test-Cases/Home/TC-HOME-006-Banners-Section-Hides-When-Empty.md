---
tc_id: TC-HOME-006
title: Verify Banners Section Completely Disappears When No Active Banners Exist
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
| Active Banners Count | `0` (No banners published, all expired, or none matching user segment) |

# Preconditions
1. In the backend, there are no active banners configured for the current audience segment (or all existing banners are past their expiration window).
2. User opens the mobile application on the Home screen.

# Steps
1. Launch the mobile application.
2. Navigate to the Home screen.
3. Inspect the UI layout between the search bar and the subsequent sections (such as Featured listings).

# Expected Result
1. The Banners section is completely hidden from the Home screen.
2. No empty carousel, placeholder box, broken image icon, or awkward blank spacing is rendered.
3. Subsequent sections (e.g. Featured listings) shift up smoothly to occupy the layout.

# Notes
- Requirement: `لا بنرات أو لا مميزة: يختفي القسم كاملًا`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
