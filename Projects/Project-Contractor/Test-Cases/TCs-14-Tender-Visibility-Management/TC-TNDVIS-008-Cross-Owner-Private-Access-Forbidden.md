---
tc_id: TC-TNDVIS-008
title: Verify Cross-Owner Access Control Returns 403 Forbidden on Unauthorized Access Attempts
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
| Authenticated User | Owner A (`owner_id: TO-100`) |
| Target Tender | `TND-2000` (owned by Owner B, `owner_id: TO-200`) |
| Request Endpoint | GET `/api/tenders/TND-2000` with Owner A's token |
| Expected HTTP Status | `403 Forbidden` |
| Expected Error Message | `"Unauthorized access to tender"` |

# Preconditions
1. Tender Owner A (`TO-100`) is logged in with an active bearer token.
2. Tender `TND-2000` belongs to Tender Owner B (`TO-200`).

# Steps
1. As logged-in Owner A, send an HTTP GET request to `/api/tenders/TND-2000` using Owner A's Authorization token.
2. Observe the returned HTTP status code and response payload.
3. Verify whether any private data of Owner B is returned.

# Expected Result
1. The system evaluates the requester context against the tender's `owner_id`.
2. The authorization check fails (`owner_id != current_user_id`).
3. The server responds with HTTP 403 Forbidden.
4. The error message `"Unauthorized access to tender"` is returned.
5. No private tender information, documents, or offers are exposed.
6. Adheres strictly to BR-12 ("A Tender Owner cannot access or manage another owner's private tender information").

# Notes
- Directly validates alternative flow E2 in UF-14 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
