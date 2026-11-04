---
tc_id: TC-MYTND-009
title: Verify Successful Data Reload When User Clicks Retry After Error
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Initial State | Error screen showing `"Unable to load your tenders. Please check your internet connection and try again."` |
| Restored State | Network reconnected and backend service operational |
| Action Button | `"Retry"` |

# Preconditions
1. User has encountered the network/backend query error on "My Tenders" (TC-MYTND-008).
2. The error message and "Retry" button are currently displayed on the screen.
3. Network connection has been re-established and backend services are healthy.

# Steps
1. On the error screen, click the "Retry" button.
2. Observe the loading state and subsequent view rendering.

# Expected Result
1. Clicking "Retry" re-initiates the query for tenders associated with `owner_id`.
2. The error container is dismissed.
3. The query succeeds and the user's created tenders list is correctly retrieved and displayed.
4. All tender card metadata is rendered accurately.

# Notes
- Validates error recovery flow under alternative flow E1 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
