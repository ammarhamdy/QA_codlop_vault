---
tc_id: TC-TNDDTL-002
title: Verify Contextual Actions and Restrictions for Awarded Tender
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-102` |
| Title | `Hospital Clinic Electrical Retrofit` |
| Status | `Awarded` |
| Accepted Offer | 1 Accepted Offer present |
| Total Received Offers | `5` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-102` belongs to the authenticated owner and has status `Awarded` (an offer was previously accepted).
3. User navigates to the details view of `TND-102`.

# Steps
1. Navigate to the Tender Details view for tender `TND-102`.
2. Inspect the status badge displayed on the page.
3. Inspect the contextual action controls: "View Offers", "Edit Tender", and "Close Tender".
4. Attempt to interact with or trigger the "Edit Tender" and "Close Tender" actions if visible.

# Expected Result
1. The status badge prominently indicates `Awarded`.
2. The "View Offers" button remains visible, active, and clickable (reflecting `5 Offers`).
3. The "Edit Tender" button is disabled or hidden, adhering strictly to BR-05 (editing prohibited once an offer is accepted).
4. The "Close Tender" button is disabled or hidden, as awarded tenders cannot be manually closed.
5. All tender details remain visible in a read-only state.

# Notes
- Directly validates alternative flow A1 in UF-04 and BR-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
