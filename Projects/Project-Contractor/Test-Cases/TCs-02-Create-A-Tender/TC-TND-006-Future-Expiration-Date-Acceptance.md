---
tc_id: TC-TND-006
title: Verify System Accepts Valid Future Expiration Dates
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expiration Date Boundary (+1 Day) | `Tomorrow at 23:59` |
| Expiration Date Standard (+30 Days) | `Current date + 30 days` |
| Project Information | Standard valid tender data |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Complete all mandatory project fields with valid information.
2. Select an expiration date set to tomorrow (+1 day).
3. Click "Publish Tender" and verify date validation passes.
4. (In a separate creation session) Select an expiration date set to 30 days into the future.
5. Click "Publish Tender" and verify date validation passes.

# Expected Result
1. The system confirms that the expiration date is in the future.
2. No date validation errors are generated.
3. The tender is successfully saved with the specified `end_date` and published with status `Open`.

# Notes
- Validates step 4 requirement that expiration date must be confirmed as a future date per UF-02 and BR-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
