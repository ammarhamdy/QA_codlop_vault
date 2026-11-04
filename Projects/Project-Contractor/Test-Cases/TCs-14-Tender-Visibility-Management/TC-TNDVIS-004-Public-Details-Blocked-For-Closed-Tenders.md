---
tc_id: TC-TNDVIS-004
title: Verify Public Details Endpoint Blocks Anonymous Access to Manually Closed Tenders
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
| Target Tender ID | `TND-1002` (Status: `Closed`) |
| Endpoint | GET `/api/public/tenders/TND-1002` |
| Expected Error Message | `"Tender is no longer available"` |

# Preconditions
1. Target tender `TND-1002` has status `Closed`.
2. Requester is an anonymous user without ownership session.

# Steps
1. Navigate directly to `/tenders/TND-1002` in an unauthenticated browser window.
2. Send an HTTP GET request to `/api/public/tenders/TND-1002`.
3. Observe HTTP status code and returned error body.

# Expected Result
1. The system detects that the requested tender status is `Closed`.
2. Access is blocked; the server returns HTTP 404 Not Found or HTTP 403 Forbidden.
3. The response body presents the standardized message: `"Tender is no longer available"`.
4. Project specifications, contact details, and attachments are shielded from public view per BR-04 and BR-06.

# Notes
- Directly validates alternative flow E1 in UF-14, BR-04, and BR-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
