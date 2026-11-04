---
tc_id: TC-TNDVIS-005
title: Verify Public Details Endpoint Blocks Anonymous Access to Expired Tenders
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Requesting Actor | Anonymous Professional |
| Target Tender ID | `TND-1003` (Status: `Expired` or `end_date <= CURRENT_TIMESTAMP`) |
| Endpoint | GET `/api/public/tenders/TND-1003` |
| Expected Error Message | `"Tender is no longer available"` |

# Preconditions
1. Target tender `TND-1003` has passed its expiration date.
2. Requester is an anonymous user.

# Steps
1. Navigate directly to `/tenders/TND-1003` without logging in.
2. Send an HTTP GET request to `/api/public/tenders/TND-1003`.
3. Inspect HTTP status code and response payload.

# Expected Result
1. The system detects that the requested tender has expired.
2. The server returns HTTP 404 Not Found or HTTP 403 Forbidden.
3. The response body presents the standardized message: `"Tender is no longer available"`.
4. Project details are shielded from anonymous professionals per BR-04 and BR-07.

# Notes
- Directly validates alternative flow E1 in UF-14, BR-04, and BR-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
