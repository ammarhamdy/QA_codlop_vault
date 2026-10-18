---
tc_id: TC-SRCH-012
title: Verify Amenities Filter Applies Conjunction Matching All Selected Amenities
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
| Selected Amenities | `مسبح` (Swimming Pool) AND `ألعاب أطفال` (Kids Playground) |
| Chalet 1 Amenities | `مسبح`, `ألعاب أطفال`, `شواية` (Has both selected amenities) |
| Chalet 2 Amenities | `مسبح`, `شواية` (Missing playground) |
| Chalet 3 Amenities | `ألعاب أطفال`, `ملعب كرة قدم` (Missing pool) |

# Preconditions
1. Chalets 1, 2, and 3 are published listings in the same city.
2. User is on the filter screen.

# Steps
1. Navigate to the Amenities section in the filter drawer.
2. Check `مسبح` (Pool) and `ألعاب أطفال` (Kids Playground).
3. Tap Apply Filters to execute the filtered search.
4. Review the search results list.

# Expected Result
1. Search results return Chalet 1 (which includes all selected amenities).
2. Chalet 2 is excluded from results (lacks playground).
3. Chalet 3 is excluded from results (lacks pool).
4. Results strictly adhere to boolean AND matching (`كل المختارة`) rather than boolean OR.

# Notes
- Requirement: `الفلاتر: المرافق (كل المختارة).`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
