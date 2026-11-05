---
tc_id: TC-TNDVIS-006
title: Verify Public Details Endpoint Blocks Anonymous Access to Awarded Tenders
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
| Requesting Actor | Anonymous Professional |
| Target Tender ID | `TND-1004` (Status: `Awarded`) |
| Endpoint | GET `/api/public/tenders/TND-1004` |
| Expected Error Message | `"Tender is no longer available"` |

# Preconditions
1. Target tender `TND-1004` has status `Awarded` following offer acceptance.
2. Requester is an anonymous user without ownership session.

# Steps
1. Navigate directly to `/tenders/TND-1004` in an unauthenticated browser window.
2. Send an HTTP GET request to `/api/public/tenders/TND-1004`.
3. Observe HTTP status code and response body.

# Expected Result
1. The system confirms that `TND-1004` is in `Awarded` status.
2. The server denies public access and returns HTTP 404 Not Found or HTTP 403 Forbidden.
3. The response body presents the standardized message: `"Tender is no longer available"`.
4. Awarded tender details are shielded from public access per BR-04 and FR-14.

# Notes
- Directly validates alternative flow E1 in UF-14 and BR-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
