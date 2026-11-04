---
tc_id: TC-CLSTND-007
title: Verify System Rejection When Attempting to Close an Already Closed Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-607` (Status: `Closed`) |
| Direct Request | POST `/api/tenders/607/close` |
| Expected Message | `"Tender cannot be closed as it is already closed, expired, or awarded."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-607` is already in `Closed` status.
3. User attempts direct closure via a stale browser window or automated API call.

# Steps
1. Attempt to trigger the close action on already-closed tender `TND-607`.
2. Send an authenticated POST request to `/api/tenders/607/close`.
3. Observe the system response and status code.

# Expected Result
1. The server verifies the tender status and determines it is already `Closed`.
2. The closure operation is aborted.
3. The system returns the specific error message: `"Tender cannot be closed as it is already closed, expired, or awarded."`.
4. No duplicate update or state corruption occurs.

# Notes
- Directly validates alternative flow E1 in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
