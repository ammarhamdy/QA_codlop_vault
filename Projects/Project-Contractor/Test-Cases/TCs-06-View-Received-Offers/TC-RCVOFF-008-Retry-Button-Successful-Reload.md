---
tc_id: TC-RCVOFF-008
title: Verify Successful Data Reload When Clicking Retry After Network Failure
priority: Medium
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
| Tender ID | `TND-308` |
| Initial State | Error screen showing `"Unable to load offers. Please try again."` |
| Restored State | Network active, API online |
| Action Button | `"Retry"` |

# Preconditions
1. User encountered the network failure on the View Received Offers screen (TC-RCVOFF-007).
2. The error message and "Retry" button are currently displayed.
3. Network connection and backend services have been restored.

# Steps
1. On the error screen, click the "Retry" button.
2. Await system query.
3. Observe screen transition and rendered content.

# Expected Result
1. Clicking "Retry" re-initiates the query for offers associated with `TND-308`.
2. The error container is dismissed.
3. The query completes successfully and renders the received offers cards.
4. All offer data (professional name, price, duration, status) is displayed accurately.

# Notes
- Validates recovery behavior under alternative flow E2 in UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
