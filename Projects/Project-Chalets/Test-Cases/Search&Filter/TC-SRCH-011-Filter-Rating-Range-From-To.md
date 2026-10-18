---
tc_id: TC-SRCH-011
title: Verify Rating Filter Restricts Results Within Specified Rating Range
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
| Rating Range From/To (`التقييم من/إلى`) | From: `4.0` To: `5.0` |
| Chalet A (In Range) | Rating: `4.6` |
| Chalet B (Below Range) | Rating: `3.5` |
| Chalet C (Unrated / New) | Rating: None (`جديد`) |

# Preconditions
1. Chalets A, B, and C exist in database under the searched city.
2. User is on the filter drawer interface.

# Steps
1. Navigate to the Rating section in the filter drawer.
2. Set Rating From to `4.0` and Rating To to `5.0`.
3. Apply filters.
4. Review the search results list.

# Expected Result
1. Chalet A (Rating 4.6) is displayed in the search results.
2. Chalet B (Rating 3.5) is excluded from the results.
3. Unrated listings or listings outside the specified score range are excluded.

# Notes
- Requirement: `الفلاتر: التقييم من/إلى.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
