---
tc_id: TC-RCVOFF-001
title: Verify Successful Retrieval and Display of Received Offers for an Owned Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-301` (`Commercial Warehouse Fit-out`) |
| Offer 1 | Professional: `Ahmed Al-Harbi`, Price: `150,000 SAR`, Duration: `60 Days`, Status: `Pending` |
| Offer 2 | Professional: `Khaled Construction Est.`, Price: `140,000 SAR`, Duration: `45 Days`, Status: `Pending` |
| Offer 3 | Professional: `Modern Engineering Co.`, Price: `165,000 SAR`, Duration: `50 Days`, Status: `Pending` |

# Preconditions
1. Tender Owner is logged in with an active session.
2. Tender `TND-301` belongs to the authenticated Tender Owner (`owner_id` matches).
3. Multiple offers have been submitted for `TND-301` by professionals.
4. User is on the Tender Details screen (`SCR-TND-03`).

# Steps
1. On the Tender Details screen for `TND-301`, click the "View Offers" button.
2. Await system query response.
3. Observe the rendered offers list screen (`SCR-OFF-01`).
4. Inspect each displayed offer card for:
   - Professional Name
   - Proposed Price
   - Execution Duration
   - Submission Timestamp
   - Status badge (`Pending`)

# Expected Result
1. The system verifies tender ownership and retrieves all offers linked to `TND-301`.
2. All 3 submitted offers are displayed in structured cards.
3. Each card accurately reflects the professional's name, proposed price, duration, formatted submission timestamp, and `Pending` status.
4. No offers belonging to other tenders are displayed.

# Notes
- Validates Main Flow (Steps 1 to 3), FR-09, and BR-10 in UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
