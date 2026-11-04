---
tc_id: TC-ACPOFF-010
title: Verify Authorization Control Blocks Accepting Offers on Other Owners' Tenders (IDOR Prevention)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Tender Owner A (`owner_id: TO-100`) |
| Target Tender | `TND-600` (owned by Owner B, `owner_id: TO-200`) |
| Target Offer | `OFF-600` (submitted for `TND-600`) |
| Unauthorized Request | POST `/api/offers/OFF-600/accept` with Owner A's session token |

# Preconditions
1. Tender Owner A (`TO-100`) is authenticated with an active session.
2. Tender `TND-600` and its associated offer `OFF-600` belong to Tender Owner B (`TO-200`).
3. User is operating within Owner A's authenticated session.

# Steps
1. As logged-in Owner A, attempt direct URL navigation to the acceptance interface for `OFF-600`.
2. Observe UI route handling.
3. Send an authenticated HTTP POST request to `/api/offers/OFF-600/accept` using Owner A's bearer token.
4. Observe the HTTP status code and response payload.
5. Check database records for `OFF-600` and `TND-600`.

# Expected Result
1. The server checks the parent tender's `owner_id` against the authenticated user (`TO-100`).
2. The mismatch is identified, and the unauthorized request is rejected with HTTP 403 Forbidden.
3. An authorization error is displayed, and access is blocked.
4. Neither `OFF-600` nor `TND-600` status is altered in the database.
5. Adheres strictly to BR-12 ("A Tender Owner cannot access or manage another owner's private tender information").

# Notes
- Directly validates alternative flow E2 in UF-08 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
