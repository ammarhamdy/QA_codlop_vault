---
tc_id: TC-SRCH-001
title: Verify Search Bar Criteria Selection Flow for City District and Guests
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
| City (`المدينة`) | `الرياض` (Riyadh) |
| District (`الحي`) | `الملقا` (Al-Malqa) |
| Guests Count (`الضيوف`) | `6` |

# Preconditions
1. User (visitor or authenticated client) is on the Home screen of the mobile application.
2. Published chalet listings exist in the database for the selected city and district.

# Steps
1. Tap on the search bar from the Home screen.
2. Verify transition to the search criteria selection interface.
3. Select City (`الرياض`).
4. Select District (`الملقا`).
5. Set or select the number of guests (`6`).
6. Tap the search submission button to execute the query.

# Expected Result
1. Tapping the search bar transitions the user into the search flow.
2. City, district, and guest count selectors respond properly and capture user inputs without error.
3. Submitting the search executes the query and navigates to the search results screen displaying listings matching the selected city, district, and guest capacity.

# Notes
- Requirement: `البحث: يضغط شريط البحث: يختار المدينة والحي ثم عدد الضيوف.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
