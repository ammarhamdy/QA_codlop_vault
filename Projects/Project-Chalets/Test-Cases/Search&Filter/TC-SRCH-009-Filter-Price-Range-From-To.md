---
tc_id: TC-SRCH-009
title: Verify Price Filter Accurately Constrains Search Results Within Min and Max Bounds
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
| Price From (`السعر من`) | `1,000 ر.س` |
| Price To (`السعر إلى`) | `2,000 ر.س` |
| Chalet A (In Range) | Price: `1,500 ر.س` |
| Chalet B (Below Range) | Price: `800 ر.س` |
| Chalet C (Above Range) | Price: `2,500 ر.س` |

# Preconditions
1. Chalets A, B, and C are published in the target search location.
2. User is on the filter drawer interface.

# Steps
1. Navigate to the Price filter section.
2. Set Price From to `1,000`.
3. Set Price To to `2,000`.
4. Apply the filter.
5. Review the returned search results list.

# Expected Result
1. Chalet A (1,500 SAR) is displayed in the search results.
2. Chalet B (800 SAR) is excluded from the results.
3. Chalet C (2,500 SAR) is excluded from the results.
4. Only listings with prices within the range `[1000, 2000]` are displayed.

# Notes
- Requirement: `الفلاتر: السعر من/إلى.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
