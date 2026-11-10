---
tc_id: TC-TNDDTL-007
title: Verify Navigation to Close Tender Action from Tender Details
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: fail
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-107` |
| Tender Status | `Open` |
| Destination Flow | Close A Tender (`UF-09`, `SCR-TND-07`) |

# Preconditions
1. Tender Owner is authenticated.
2. User is viewing details for an active `Open` tender (`TND-107`).
3. "Close Tender" button is active and enabled.

# Steps
1. On the Tender Details screen, click the "Close Tender" button.
2. Observe modal prompt or navigation transition to the Close Tender flow.

# Expected Result
1. The application triggers the Close A Tender flow (`UF-09`).
2. The user is presented with the close tender confirmation dialogue or screen (`SCR-TND-07`).
3. The context is accurately tied to tender `TND-107`.

# Notes
- Validates Step 4 action navigation in UF-04 and integration with UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
