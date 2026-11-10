---
tc_id: TC-OFFDTL-002
title: Verify Offer Details View When Viewing an Accepted Offer
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offer ID | `OFF-1002` |
| Offer Status | `Accepted` |
| Parent Tender Status | `Awarded` |

# Preconditions
1. Tender Owner is authenticated.
2. Parent tender belongs to the user and is in `Awarded` status.
3. Offer `OFF-1002` was accepted by the owner (status = `Accepted`).

# Steps
1. Navigate to the Offer Details screen for offer `OFF-1002`.
2. Inspect the rendered status badge.
3. Verify the state and visibility of the "Accept Offer" button.
4. Verify the availability of professional contact details (Call, WhatsApp).

# Expected Result
1. The status badge prominently indicates `Accepted`.
2. The "Accept Offer" action button is hidden / removed from the screen (as it is already accepted).
3. The professional's contact info and proposal details remain fully readable.
4. Direct contact links (Call, WhatsApp) remain accessible to coordinate project execution.

# Notes
- Directly validates alternative flow A2 in UF-07 and BR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
