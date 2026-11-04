---
tc_id: TC-OFFDTL-006
title: Verify Navigation to Offer Acceptance Flow from Offer Details Screen
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offer ID | `OFF-1006` (Status: `Pending`) |
| Destination Flow | Accept An Offer (`UF-08`, `SCR-OFF-03`) |

# Preconditions
1. Tender Owner is authenticated.
2. Parent tender is `Open` with no offers accepted yet.
3. User is on the Offer Details screen for `OFF-1006`.
4. "Accept Offer" button is enabled.

# Steps
1. On the Offer Details screen for `OFF-1006`, click the "Accept Offer" button.
2. Observe modal prompt or navigation transition.
3. Verify the destination dialog / screen rendered.

# Expected Result
1. The application triggers the offer acceptance flow (`UF-08`).
2. The acceptance confirmation modal (`SCR-OFF-03`) is displayed with warning text: `"Accept this offer? You can only accept one offer per tender. This action cannot be undone."`.
3. Context for offer `OFF-1006` is passed into the acceptance flow.

# Notes
- Validates Main Flow Step 4 in UF-07 and integration with UF-08 (FR-11).

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
