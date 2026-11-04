---
tc_id: TC-CLSTND-008
title: Verify System Rejection When Attempting to Close an Expired Tender
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-608` (Status: `Expired`) |
| Direct Request | POST `/api/tenders/608/close` |
| Expected Message | `"Tender cannot be closed as it is already closed, expired, or awarded."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-608` has automatically expired due to reaching its expiration date (status = `Expired`).
3. User attempts to execute a close operation against `TND-608`.

# Steps
1. Navigate to Tender Details for expired tender `TND-608`.
2. Verify that the "Close Tender" button is disabled/hidden on the UI.
3. Attempt direct API invocation to close the tender: POST `/api/tenders/608/close`.
4. Observe API error response.

# Expected Result
1. The system confirms that the tender status is `Expired`.
2. The operation aborts with error message: `"Tender cannot be closed as it is already closed, expired, or awarded."`.
3. The tender remains in `Expired` status.

# Notes
- Directly validates alternative flow E1 in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
