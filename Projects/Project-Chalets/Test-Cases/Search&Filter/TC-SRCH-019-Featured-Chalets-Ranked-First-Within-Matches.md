---
tc_id: TC-SRCH-019
title: Verify Featured Chalets Appear First Exclusively Within Matching Results
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
| Target City Filter | `عنيزة` (Unaizah) |
| Chalet 1 (Featured, Matches City) | Location: `عنيزة`, Badge: `مميز` |
| Chalet 2 (Non-Featured, Matches City) | Location: `عنيزة`, Badge: None |
| Chalet 3 (Featured, Non-Matching City) | Location: `بريدة`, Badge: `مميز` |

# Preconditions
1. Chalets 1, 2, and 3 are published in the platform.
2. User filters search by city `عنيزة`.

# Steps
1. Execute search with city set to `عنيزة`.
2. Inspect the sequence of results rendered.
3. Check the placement of Chalet 1 relative to Chalet 2.
4. Verify whether Chalet 3 appears anywhere in the results.

# Expected Result
1. Chalet 1 (Featured and matching `عنيزة`) is ranked first at the top of the search results list, ahead of standard non-featured matching listings (Chalet 2).
2. Chalet 3 (Featured in `بريدة`) does not appear in the results, confirming that featured listings are promoted **only** if they satisfy all active search/filter criteria (`المميزة أولًا داخل النتائج المطابقة فقط`).

# Notes
- Requirement: `المميزة أولًا داخل النتائج المطابقة فقط`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
