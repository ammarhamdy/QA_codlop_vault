---
tc_id: TC-CLSTND-009
title: Verify System Rejection When Attempting to Close an Awarded Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-609` (Status: `Awarded`) |
| Direct Request | POST `/api/tenders/609/close` |
| Expected Message | `"Tender cannot be closed as it is already closed, expired, or awarded."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-609` has had an offer accepted and is currently in `Awarded` status.
3. User attempts to execute a close operation on `TND-609`.

# Steps
1. Navigate to Tender Details for awarded tender `TND-609`.
2. Verify that the "Close Tender" action is not available on the screen.
3. Send an authenticated HTTP POST request to `/api/tenders/609/close`.
4. Observe system response and error message.

# Expected Result
1. The server identifies that the tender is in `Awarded` status.
2. The closure request is rejected.
3. The system returns the specific error message: `"Tender cannot be closed as it is already closed, expired, or awarded."`.
4. The tender remains in `Awarded` status.

# Notes
- Directly validates alternative flow E1 in UF-09 and BR-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
