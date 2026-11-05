---
tc_id: TC-TNDVIS-003
title: Verify Public Details Endpoint Serves Open and Unexpired Tenders Successfully
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Requesting Actor | Anonymous Professional (no session credentials) |
| Target Tender ID | `TND-1001` (Status: `Open`, `end_date > CURRENT_TIMESTAMP`) |
| Endpoint | GET `/api/public/tenders/TND-1001` |
| Expected HTTP Status | `200 OK` |

# Preconditions
1. Target tender `TND-1001` exists with status `Open` and an unexpired expiration date.
2. User is unauthenticated.

# Steps
1. Send an HTTP GET request to `/api/public/tenders/TND-1001` without an Authorization header.
2. Observe HTTP status code and response payload.
3. Verify returned fields (Title, Description, Budget, Location, Attachments).

# Expected Result
1. The system confirms that the requested tender is in `Open` status and unexpired.
2. The server responds with HTTP 200 OK.
3. The response body contains complete public project specifications and attachments.
4. Adheres strictly to BR-04 ("Tender details are accessible without authentication").

# Notes
- Validates Main Flow Step 4, BR-02, and BR-04 in UF-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
