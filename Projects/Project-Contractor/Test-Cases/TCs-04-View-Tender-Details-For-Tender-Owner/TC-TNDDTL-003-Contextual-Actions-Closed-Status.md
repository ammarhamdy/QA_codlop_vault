---
tc_id: TC-TNDDTL-003
title: Verify Contextual Actions and State for Manually Closed Tender
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: pass
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-103` |
| Title | `Residential Compound Landscaping` |
| Status | `Closed` (Manually closed by owner, no offer accepted) |
| Received Offers | `2` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-103` was created by the authenticated owner and has been manually closed (status = `Closed`).
3. No offer has been accepted on this tender.

# Steps
1. Navigate to the Tender Details view for tender `TND-103`.
2. Inspect the rendered status badge.
3. Verify the state and availability of "View Offers", "Edit Tender", and "Close Tender" buttons.
4. Attempt to click "Close Tender" if present.

# Expected Result
1. The status badge displays `Closed`.
2. The "Close Tender" button is disabled or hidden, adhering to BR-06 (closing cannot be re-triggered on an already closed tender).
3. The "Edit Tender" button remains available and enabled (since no offer has been accepted per BR-05).
4. The "View Offers" button remains available and clickable, displaying the received offers count (`2`).

# Notes
- Directly validates alternative flow A2 in UF-04 and BR-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
