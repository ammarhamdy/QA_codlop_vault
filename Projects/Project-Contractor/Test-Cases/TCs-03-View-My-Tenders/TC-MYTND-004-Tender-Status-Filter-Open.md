---
tc_id: TC-MYTND-004
title: Verify List Filtering for Open Tenders
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Applied Filter | `Open` |
| Expected Tenders | Only tenders with status `Open` |
| Excluded Tenders | Tenders with status `Closed`, `Expired`, `Awarded` |

# Preconditions
1. Tender Owner is authenticated.
2. The user has existing tenders under multiple statuses (`Open`, `Closed`, `Expired`, `Awarded`).
3. User is on the "My Tenders" list view (`SCR-TND-02`).

# Steps
1. Navigate to the "My Tenders" screen.
2. Verify that the default list displays all owner tenders across statuses.
3. Locate the status filter control (tabs/dropdown).
4. Select the `Open` filter option.
5. Inspect the filtered results list.

# Expected Result
1. The list dynamically updates to show only tenders with status `Open`.
2. All tenders with status `Closed`, `Expired`, or `Awarded` are filtered out of the view.
3. The count or list indicators reflect the filtered subset.
4. Each displayed card correctly shows the `Open` status badge.

# Notes
- Validates alternative flow A2 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
