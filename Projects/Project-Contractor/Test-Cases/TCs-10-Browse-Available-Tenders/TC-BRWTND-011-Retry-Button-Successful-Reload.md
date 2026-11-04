---
tc_id: TC-BRWTND-011
title: Verify Successful Catalog Reload When Clicking Retry After Failure
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
| Initial State | Error view displaying `"Unable to load tenders. Please check your internet connection and try again."` |
| Restored State | Network connection re-established, backend online |
| Action Button | `"Retry"` |

# Preconditions
1. User encountered the network failure on the Browse Tenders catalog (TC-BRWTND-010).
2. The error message and "Retry" button are currently displayed.
3. Network connection and catalog service have been restored.

# Steps
1. On the error screen, click the "Retry" button.
2. Await catalog query processing.
3. Observe screen transition and rendered contents.

# Expected Result
1. Clicking "Retry" re-triggers the public catalog query for active open tenders.
2. The error screen is dismissed.
3. The query succeeds and populates the catalog with available tender cards.
4. All tender details, budgets, and remaining times load properly.

# Notes
- Validates recovery behavior under alternative flow E1 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
