---
tc_id: TC-HOME-002
title: Verify Search Bar Renders with City Dates and Guests Selectors and Opens Search Flow
priority: High
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
| Search Bar Components | `المدينة` (City), `التواريخ` (Dates), `الضيوف` (Guests) |

# Preconditions
1. User is on the Home screen of the mobile application.

# Steps
1. Observe the top search bar located on the Home screen.
2. Verify that the search bar clearly displays selectors/placeholders for:
   - المدينة (City)
   - التواريخ (Dates)
   - الضيوف (Guests)
3. Tap on the search bar (or any of its selectors).

# Expected Result
1. The search bar is prominently displayed at the top of the Home screen with all three segments visible: `المدينة`, `التواريخ`, `الضيوف`.
2. Tapping the search bar transitions the user into the search flow / search overlay (allowing selection of city/district, Gregorian calendar dates, and guest count).

# Notes
- Requirement: `الرئيسية: شريط بحث (المدينة، التواريخ، الضيوف)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
