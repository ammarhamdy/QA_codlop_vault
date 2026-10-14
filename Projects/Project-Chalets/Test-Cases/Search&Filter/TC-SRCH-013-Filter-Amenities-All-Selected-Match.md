---
tc_id: TC-SRCH-013
title: Verify Amenities (وسائل الراحة) Filter Enforces Conjunctive Match for All Selected Amenities
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
| Selected Amenities | `مسبح داخلي` (Indoor Pool) AND `ألعاب أطفال` (Kids Playground) |
| Chalet 1 (Full Match) | Amenities: `مسبح داخلي`, `ألعاب أطفال`, `مشب` |
| Chalet 2 (Partial Match) | Amenities: `مسبح داخلي` only |
| Chalet 3 (Partial Match) | Amenities: `ألعاب أطفال` only |
| Chalet 4 (No Match) | Amenities: `جلسة خارجية` only |

# Preconditions
1. Active chalets with various amenity combinations are published in the selected city.
2. User opens the Filters modal.

# Steps
1. In the Amenities section of the Filters modal, check both `مسبح داخلي` and `ألعاب أطفال`.
2. Apply the filters.
3. Review the returned results.

# Expected Result
1. Only Chalet 1 is displayed in the search results because it contains **all** selected amenities (`المرافق (كل المختارة)`).
2. Chalet 2 and Chalet 3 are excluded even though they match one of the chosen amenities.
3. The system enforces strict conjunctive (AND) filtering across all selected amenities rather than disjunctive (OR) filtering.

# Notes
- Requirement: `المرافق (كل المختارة)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
