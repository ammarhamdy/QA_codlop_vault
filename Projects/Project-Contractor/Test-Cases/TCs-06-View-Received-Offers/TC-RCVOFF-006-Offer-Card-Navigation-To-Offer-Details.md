---
tc_id: TC-RCVOFF-006
title: Verify Navigation to Offer Details Screen When Clicking an Offer Card
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-306` |
| Selected Offer ID | `OFF-650` |
| Destination Screen | Offer Details Screen (`UF-07`, `SCR-OFF-02`) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the View Received Offers screen for tender `TND-306`.
3. Offer card `OFF-650` is rendered in the list.

# Steps
1. Locate offer card `OFF-650` in the offers list.
2. Click on the offer card or its interactive details button.
3. Observe the page transition and route change.
4. Verify the loaded screen.

# Expected Result
1. Clicking the offer card directs the actor to the Offer Details screen (`UF-07`).
2. The Offer Details screen (`SCR-OFF-02`) loads with the complete proposal data for `OFF-650`.
3. Context for the parent tender `TND-306` is maintained.

# Notes
- Directly validates Main Flow Step 4 in UF-06 and integration with UF-07 (FR-10).

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
