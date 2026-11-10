---
tc_id: TC-BRWTND-007
title: Verify Public Catalog Search by Keyword Filters Open Tenders Accurately
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
run_result: fail
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Search Keyword | `"Hospital"` |
| Target Tender | Title: `Specialized Hospital Emergency Wing Expansion` (Status: `Open`) |
| Excluded Tender | Title: `Residential Villa Construction` (Status: `Open`) |

# Preconditions
1. Active open tenders exist in the catalog, including `Specialized Hospital Emergency Wing Expansion`.
2. The user is an unauthenticated Professional on the Browse Available Tenders screen.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Locate the search input field.
3. Type the keyword `"Hospital"` into the search bar.
4. Press Enter or wait for real-time search filtering.
5. Inspect the resulting list of tender cards.

# Expected Result
1. The search query filters the available tenders list based on the keyword `"Hospital"`.
2. `Specialized Hospital Emergency Wing Expansion` appears in the results.
3. Unrelated tenders (e.g., `Residential Villa Construction`) are filtered out.
4. The system preserves the `status = 'Open'` and future `end_date` constraints across search results.

# Notes
- Validates alternative flow A2 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
