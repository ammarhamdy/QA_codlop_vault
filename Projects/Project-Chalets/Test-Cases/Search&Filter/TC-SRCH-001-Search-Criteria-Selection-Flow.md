---
tc_id: TC-SRCH-001
title: Verify Search Initiation via City District Gregorian Dates and Guests Selection
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field                 | Value                                                                 |
| --------------------- | --------------------------------------------------------------------- |
| City (`المدينة`)      | `بريدة` (Buraidah)                                                    |
| District (`الحي`)     | `حي النفل`                                                            |
| Dates (`التواريخ`)    | Check-in: `2026-11-01`, Check-out: `2026-11-03` (2 nights, Gregorian) |
| Guests (`عدد الضيوف`) | `6 ضيوف`                                                              |

# Preconditions
1. User is on the Home screen of the mobile application.
2. Cities, districts, and Gregorian calendar picker are configured and accessible.

# Steps
1. Tap the Search Bar on the Home screen.
2. Select the target City (`بريدة`) and District (`حي النفل`).
3. In the Gregorian date picker, select Check-in date (`2026-11-01`) and Check-out date (`2026-11-03`).
4. Select the Guest count (`6`).
5. Tap "بحث" (Search).

# Expected Result
1. The search input parameters are captured accurately.
2. The search results view loads displaying chalet listings located in the selected city/district, accommodating at least 6 guests, and available for the selected dates.
3. The selected criteria are reflected in the search bar / active filters header.

# Notes
- Requirement: `يضغط شريط البحث: يختار المدينة والحي، ثم التواريخ من المنتقي الميلادي، ثم عدد الضيوف`.
- Dates must use the Gregorian calendar.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
