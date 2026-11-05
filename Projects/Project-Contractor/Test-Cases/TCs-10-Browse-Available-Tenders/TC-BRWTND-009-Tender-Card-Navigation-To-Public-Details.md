---
tc_id: TC-BRWTND-009
title: Verify Navigation to Public Tender Details Screen from Catalog Card
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected Tender | Title: `Airport Terminal Roof Waterproofing`, ID: `TND-709` |
| Destination View | Public Tender Details (`UF-11`, `SCR-PUB-02`) |

# Preconditions
1. Active open tender `TND-709` is rendered in the Browse Available Tenders catalog.
2. The user is an unauthenticated Professional.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Locate the card for `Airport Terminal Roof Waterproofing` (`TND-709`).
3. Click on the tender card or its "View Details" action.
4. Observe the page transition and route change.
5. Verify whether login or authentication is requested.

# Expected Result
1. The application seamlessly navigates to the public Tender Details screen (`UF-11`).
2. Full project specifications, attachments, and the "Submit Offer" action are presented.
3. No authentication, login, or registration is prompted per BR-02 and BR-04.

# Notes
- Directly validates Main Flow Step 4 in UF-10 and integration with UF-11 (FR-03).

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
