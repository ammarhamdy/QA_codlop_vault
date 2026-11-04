---
tc_id: TC-BRWTND-006
title: Verify Public Catalog Filtering by City and Project Type
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target City Filter | `Dammam` |
| Target Project Type Filter | `Renovation` |
| Matching Tender | Title: `Commercial Showroom Renovation`, City: `Dammam`, Type: `Renovation`, Status: `Open` |
| Non-Matching Tender 1 | Title: `Villa Construction`, City: `Riyadh`, Type: `Construction`, Status: `Open` |
| Non-Matching Tender 2 | Title: `Office Painting`, City: `Dammam`, Type: `Finishing`, Status: `Open` |

# Preconditions
1. Active open tenders exist across various cities and project types.
2. The user is an unauthenticated Professional browsing the catalog.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Select `Dammam` from the City filter dropdown/options.
3. Select `Renovation` from the Project Type filter dropdown/options.
4. Observe the filtered catalog list.

# Expected Result
1. The catalog dynamically updates to display only tenders matching both `City = 'Dammam'` and `Project Type = 'Renovation'`.
2. `Commercial Showroom Renovation` is rendered in the list.
3. Tenders located in other cities (`Riyadh`) or under other project types (`Finishing`, `Construction`) are excluded.
4. All displayed tenders strictly retain `status = 'Open'` and active expiration dates.

# Notes
- Validates alternative flow A2 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
