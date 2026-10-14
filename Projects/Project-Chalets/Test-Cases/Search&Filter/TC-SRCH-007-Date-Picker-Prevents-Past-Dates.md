---
tc_id: TC-SRCH-007
title: Verify Gregorian Date Picker Prohibits Selection of Past Dates
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field                | Value                                                 |
| -------------------- | ----------------------------------------------------- |
| Current System Date  | `Today` (e.g. 2026-10-14)                             |
| Target Invalid Dates | Any date prior to Today (e.g. 2026-10-13, 2026-10-01) |

# Preconditions
1. User is interacting with the search bar or filter modal where the Gregorian calendar date picker is displayed.

# Steps
1. Open the date picker.
2. Locate dates prior to the current system date (past dates).
3. Attempt to tap/select a date occurring yesterday or in a previous month.
4. Verify the visual state of past date cells.

# Expected Result
1. All past calendar dates are visually grayed out and disabled.
2. Tapping any past date produces no selection.
3. The user cannot set a check-in date in the past.

# Notes
- Requirement: `المنتقي يمنع: ... والتاريخ الماضي`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
