---
tc_id: TC-RCVOFF-007
title: Verify System Error Handling and Retry Option on Network Failure or Query Timeout
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
| Tender ID | `TND-307` |
| Simulated State | Network disconnection / Backend query timeout |
| Expected Error Message | `"Unable to load offers. Please try again."` |
| Expected Action | `"Retry"` button |

# Preconditions
1. Tender Owner is authenticated.
2. Network connection is disabled or backend offers API endpoint times out.

# Steps
1. Navigate to the Tender Details screen for `TND-307`.
2. Click the "View Offers" button while the network/backend service is in a failed state.
3. Observe system response, error message, and UI controls.

# Expected Result
1. The application handles the failure without crashing.
2. An actionable error message is presented: `"Unable to load offers. Please try again."`.
3. A "Retry" button is prominently displayed.
4. No partially corrupted cards or unhandled exceptions are shown.

# Notes
- Directly validates alternative flow E2 and post-failure state in UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
