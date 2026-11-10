---
tc_id: TC-MYTND-008
title: Verify System Error Handling and Retry Button Display on Query Failure
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Simulated Error | Network disconnection / Backend 500 error during query |
| Expected Error Message | `"Unable to load your tenders. Please check your internet connection and try again."` |
| Expected Control | `"Retry"` button |

# Preconditions
1. Tender Owner is authenticated.
2. Network connectivity is disabled or backend tender query service is returning a failure response.

# Steps
1. Select "My Tenders" from the navigation menu.
2. Trigger the query while the network/backend service is in a failed state.
3. Observe the system response, error container, and interactive options.

# Expected Result
1. The system handles the network/query failure gracefully.
2. An actionable error message is displayed: `"Unable to load your tenders. Please check your internet connection and try again."`.
3. A distinct "Retry" button is provided to the user.
4. No empty state or corrupted UI cards are rendered.

# Notes
- Directly validates alternative flow E1 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
