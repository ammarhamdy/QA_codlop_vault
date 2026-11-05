---
tc_id: TC-TNDDTL-005
title: Verify Navigation to View Received Offers Flow from Tender Details
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-105` |
| Offers Count | `4` |
| Destination Flow | View Received Offers (`UF-06`, `SCR-TND-05`) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Tender Details page for tender `TND-105`.
3. The tender has received 4 offers from professionals.

# Steps
1. On the Tender Details screen, locate the "View Offers" button.
2. Verify that the button indicates the received count (`4`).
3. Click the "View Offers" button.
4. Observe the navigation transition and destination view.

# Expected Result
1. The application transitions smoothly to the View Received Offers flow (`UF-06`).
2. The offers list view (`SCR-TND-05`) loads displaying the 4 submitted offers for tender `TND-105`.
3. The URL and header context confirm scope to `TND-105`.

# Notes
- Validates Step 4 action navigation in UF-04 and integration with UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
