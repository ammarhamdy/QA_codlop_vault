---
tc_id: TC-CLSTND-006
title: Verify Previously Submitted Offers Remain Fully Preserved After Tender Closure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-606` |
| Pre-Existing Offers | `OFF-110` (`Pending`), `OFF-111` (`Pending`) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-606` has received two offers (`OFF-110` and `OFF-111`) before being closed.
3. User confirms closure of `TND-606`.

# Steps
1. Close tender `TND-606` by clicking "Close Tender" and confirming the modal.
2. Verify the tender status transitions to `Closed`.
3. From the Tender Details screen for `TND-606`, click the "View Offers" button.
4. Inspect the displayed offers list.
5. Verify database records in `tender_offers` table for `OFF-110` and `OFF-111`.

# Expected Result
1. Closing the tender does not delete, alter, or purge previously received offers.
2. Both `OFF-110` and `OFF-111` remain intact with their original submitted details and `Pending` status.
3. The Tender Owner can continue to view and review the submitted offers under the closed tender.

# Notes
- Directly validates post_success condition in UF-09: "existing offers remain intact".

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
