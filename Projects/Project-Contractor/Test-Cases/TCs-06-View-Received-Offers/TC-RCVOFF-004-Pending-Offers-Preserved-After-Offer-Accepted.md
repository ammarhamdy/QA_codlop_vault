---
tc_id: TC-RCVOFF-004
title: Verify Other Submitted Offers Remain Listed as Pending After One Offer Is Accepted
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-304` (`Awarded`) |
| Offer 1 (Accepted) | `OFF-801` (Status: `Accepted`) |
| Offer 2 (Non-accepted) | `OFF-802` (Status: `Pending`) |
| Offer 3 (Non-accepted) | `OFF-803` (Status: `Pending`) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-304` had 3 submitted offers (`OFF-801`, `OFF-802`, `OFF-803`).
3. Offer `OFF-801` was accepted by the Tender Owner.
4. User navigates to the View Received Offers screen for `TND-304`.

# Steps
1. Navigate to the View Received Offers screen for `TND-304`.
2. Verify the presence of the accepted offer (`OFF-801`).
3. Verify the presence and status of remaining offers (`OFF-802` and `OFF-803`).
4. Check if any non-accepted offer was deleted or hidden.

# Expected Result
1. All non-accepted offers (`OFF-802` and `OFF-803`) remain listed under the tender.
2. The non-accepted offers continue to display status `"Pending"`.
3. Adheres strictly to BR-10: other offers remain listed and associated with the tender after an offer is accepted and are not automatically removed.

# Notes
- Directly validates alternative flow A2 in UF-06, BR-10, and Section 8 ("Offer Lifecycle").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
