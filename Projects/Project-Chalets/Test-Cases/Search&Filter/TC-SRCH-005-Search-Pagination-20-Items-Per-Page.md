---
tc_id: TC-SRCH-005
title: Verify Search Results Pagination with Twenty Items per Batch via Infinite Scroll
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Total Matching Chalets | `45` published listings matching criteria |
| Expected Initial Page Size | `20` cards |
| Expected Second Batch Size | `20` cards (cumulative 40) |
| Expected Final Batch Size | `5` cards (cumulative 45) |

# Preconditions
1. Database contains at least 45 active chalets matching search criteria.
2. User performs a search.

# Steps
1. Execute search and wait for the results page to load.
2. Count the number of chalet cards displayed in the initial view.
3. Scroll down towards the bottom of the list to trigger infinite scroll.
4. Count the updated number of cards after the second batch loads.
5. Scroll down again to reach the end of results.

# Expected Result
1. The first batch renders exactly 20 chalet cards.
2. Reaching the bottom triggers the loading of the next 20 listings without user navigation away from the page.
3. Total displayed cards increases to 40, and the final scroll loads the remaining 5 listings.
4. Scrolling is smooth and duplicate cards are not rendered.

# Notes
- Requirement: `20 نتيجة للصفحة, المزيد يُحمّل بالتمرير`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
