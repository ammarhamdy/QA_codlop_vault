---
tc_id: TC-ACPOFF-004
title: Verify Non-Accepted Offers Remain Listed as Pending and Are Not Deleted
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-504` |
| Accepted Offer | `OFF-401` |
| Non-Accepted Offer 1 | `OFF-402` |
| Non-Accepted Offer 2 | `OFF-403` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-504` has 3 submitted offers (`OFF-401`, `OFF-402`, `OFF-403`), all initially `Pending`.
3. User accepts offer `OFF-401`.

# Steps
1. Navigate to Offer Details for `OFF-401` and complete the acceptance flow.
2. Return to the View Received Offers screen (`SCR-OFF-01`) for tender `TND-504`.
3. Verify that `OFF-401` is marked as `Accepted`.
4. Check the presence and status badges of `OFF-402` and `OFF-403`.
5. Check database records in `tender_offers` table for `OFF-402` and `OFF-403`.

# Expected Result
1. Adheres strictly to BR-10: all other offers remain listed and associated with the tender after an offer is accepted.
2. Offers `OFF-402` and `OFF-403` are not deleted from the database.
3. Both non-accepted offers continue to display status `Pending`.
4. Tender Owner can still view details of all submitted offers.

# Notes
- Directly validates Main Flow Step 4, BR-10, and Section 8 ("Offer Lifecycle").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
