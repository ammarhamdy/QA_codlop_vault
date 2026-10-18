---
tc_id: TC-SRCH-006
title: Verify Scrolling to Bottom of Search Results Automatically Loads More Results
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
| Total Matching Listings | `45` listings |
| Page 1 Range | Listings 1 to 20 |
| Page 2 Range | Listings 21 to 40 |
| Page 3 Range | Listings 41 to 45 |

# Preconditions
1. Database contains 45 published listings matching search criteria.
2. Initial 20 results are loaded on screen.

# Steps
1. Scroll smoothly toward the bottom of the first 20 listings.
2. Observe network request and UI loading behavior as scroll reaches the bottom threshold.
3. Verify that the second batch (items 21 through 40) is appended to the list.
4. Scroll toward the bottom of the second page.
5. Observe loading of the final batch (items 41 through 45).
6. Verify total rendered cards equal 45 with no duplicates.

# Expected Result
1. Reaching the bottom of the screen automatically initiates background fetch for the next page of results.
2. New cards are seamlessly appended to the list without resetting the scroll position or flashing the screen.
3. All 45 distinct listings are displayed in sequence without duplicate cards.

# Notes
- Requirement: `قواعد البحث: المزيد يُحمّل بالتمرير.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
