---
tc_id: TC-TNDDTL-006
title: Verify Navigation to Edit Tender Flow from Tender Details
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
| Tender ID | `TND-106` |
| Tender Status | `Open` |
| Destination Flow | Edit A Tender (`UF-05`, `SCR-TND-04`) |

# Preconditions
1. Tender Owner is authenticated.
2. User is viewing Tender Details for an unawarded tender (`TND-106`).
3. "Edit Tender" button is enabled.

# Steps
1. On the Tender Details screen, click the "Edit Tender" button.
2. Observe navigation transition and target screen.
3. Verify the form fields on the target screen.

# Expected Result
1. The application redirects to the Edit Tender flow (`UF-05`).
2. The Edit Tender form (`SCR-TND-04`) opens with the tender's existing data pre-populated.
3. The user remains authenticated as the tender owner.

# Notes
- Validates Step 4 action navigation in UF-04 and integration with UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
