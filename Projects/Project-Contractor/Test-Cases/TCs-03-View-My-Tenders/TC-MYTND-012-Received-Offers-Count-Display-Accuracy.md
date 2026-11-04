---
tc_id: TC-MYTND-012
title: Verify Accuracy of Received Offers Count Summary on Tender Cards
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
| Tender 1 (Zero Offers) | ID: `TND-001`, Total Offers: `0` |
| Tender 2 (Single Offer) | ID: `TND-002`, Total Offers: `1` |
| Tender 3 (Multiple Offers) | ID: `TND-003`, Total Offers: `7` |

# Preconditions
1. Tender Owner is authenticated.
2. The user has tenders with varying numbers of received offers:
   - One tender with 0 offers.
   - One tender with exactly 1 offer.
   - One tender with multiple offers (e.g., 7 offers).
3. User is on the "My Tenders" list screen.

# Steps
1. Navigate to the "My Tenders" screen.
2. Locate the tender card for Tender 1 and check the offers count indicator.
3. Locate the tender card for Tender 2 and check the offers count indicator.
4. Locate the tender card for Tender 3 and check the offers count indicator.
5. Cross-reference each displayed count with the actual database / offers list for each tender.

# Expected Result
1. The offers count summary on each tender card accurately matches the true number of received offers:
   - Tender 1 displays `0 Offers` (or equivalent badge).
   - Tender 2 displays `1 Offer`.
   - Tender 3 displays `7 Offers`.
2. Counts update synchronously when new offers are received in the system.

# Notes
- Validates offer summary requirement specified in Main Flow Step 2 and post_success state in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
