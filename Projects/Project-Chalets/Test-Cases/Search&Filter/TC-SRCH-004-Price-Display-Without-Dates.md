---
tc_id: TC-SRCH-004
title: Verify Starting Price Display on Search Cards When Dates Are Not Selected
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field                 | Value                                                         |
| --------------------- | ------------------------------------------------------------- |
| Search Criteria       | City/Filter only; Dates omitted (`بلا تواريخ`)                |
| Chalet Lowest Rate    | `750 ر.س` (Lowest weekday/base rate configured for this unit) |
| Expected Price Format | `من 750 ر.س`                                                  |

# Preconditions
1. User conducts a search or applies filters without specifying check-in/check-out dates.

# Steps
1. Open search results without selecting dates.
2. Locate the chalet card in the results.
3. Observe the price presentation.

# Expected Result
1. The price section indicates a starting rate formatted as `من {أقل سعر} ر.س` (e.g. `من 750 ر.س`).
2. The card does not assume or calculate a specific duration (nights count is omitted).

# Notes
- Requirement: `السعر: بلا تواريخ: «من {أقل سعر} ر.س»`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
