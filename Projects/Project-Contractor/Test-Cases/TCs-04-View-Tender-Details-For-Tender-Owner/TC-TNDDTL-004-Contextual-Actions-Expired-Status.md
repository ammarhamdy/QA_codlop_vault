---
tc_id: TC-TNDDTL-004
title: Verify Contextual Actions and State for Automatically Expired Tender
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-104` |
| Title | `School HVAC System Maintenance` |
| Expiration Date (`end_date`) | Past date (`2026-10-01`) |
| Status | `Expired` |
| Received Offers | `1` (unaccepted) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-104` belongs to the authenticated owner and has reached its expiration date without offer acceptance (status = `Expired`).

# Steps
1. Navigate to the Tender Details view for tender `TND-104`.
2. Inspect the expiration date and status badge.
3. Verify the state and availability of action buttons: "View Offers", "Edit Tender", and "Close Tender".

# Expected Result
1. The status badge displays `Expired`.
2. The "Close Tender" button is hidden or disabled, as the tender has already ceased to accept offers.
3. The "Edit Tender" button remains available and enabled (unawarded tender).
4. The "View Offers" button remains accessible and displays the offer summary count (`1`).

# Notes
- Validates alternative flow A2 in UF-04 and BR-05/BR-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
