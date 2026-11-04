---
tc_id: TC-RCVOFF-003
title: Verify Accepted Offer Is Prominently Displayed with Accepted Badge
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
| Tender ID | `TND-303` (Status: `Awarded`) |
| Accepted Offer ID | `OFF-701` |
| Professional Name | `Bawabat Al-Insha Contracting` |
| Accepted Price | `210,000 SAR` |
| Expected Badge | `"Accepted"` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-303` is owned by the user, and offer `OFF-701` was previously accepted by the owner (tender status is `Awarded`).
3. User accesses "View Offers" for `TND-303`.

# Steps
1. Navigate to the View Received Offers screen for tender `TND-303`.
2. Inspect the listing layout and notice the position and styling of offer `OFF-701`.
3. Verify the status badge rendered on `OFF-701`.

# Expected Result
1. The accepted offer (`OFF-701`) is displayed prominently (e.g., positioned at the top or highlighted with distinctive visual styling).
2. The card clearly displays an `"Accepted"` badge.
3. The professional name, price, duration, and details of the accepted offer are clearly legible.

# Notes
- Validates alternative flow A2 in UF-06 and BR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
