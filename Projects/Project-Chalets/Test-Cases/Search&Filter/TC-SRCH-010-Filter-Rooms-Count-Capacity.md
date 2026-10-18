---
tc_id: TC-SRCH-010
title: Verify Rooms Count Filter Returns Listings Meeting Selected Room Criterion
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
| Selected Room Count (`عدد الغرف`) | `3` rooms |
| Chalet A | `3` rooms |
| Chalet B | `1` room |

# Preconditions
1. Chalets A and B are active listings in the selected city.
2. User is on the filter drawer interface.

# Steps
1. Navigate to the Rooms section in the filter drawer.
2. Select room count = `3`.
3. Tap Apply Filters to execute the search query.
4. Inspect the search results feed.

# Expected Result
1. Chalet A (matching selected 3 rooms criterion) appears in the search results.
2. Chalet B (1 room) is excluded from the search results.

# Notes
- Requirement: `الفلاتر: عدد الغرف.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
