---
tc_id: TC-OFFDTL-009
title: Verify Authorization Control Prevents Viewing Offers Belonging to Other Owners' Tenders (IDOR Prevention)
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Tender Owner A (`owner_id: TO-100`) |
| Target Offer | `OFF-2001` (submitted for `TND-200`, owned by Owner B, `owner_id: TO-200`) |
| Direct Request | `/offers/detail?id=OFF-2001` / GET `/api/offers/OFF-2001` |
| Expected Error Message | `"Unauthorized access"` |

# Preconditions
1. Tender Owner A (`TO-100`) is logged in with an active session.
2. Offer `OFF-2001` was submitted for a tender owned by Owner B (`TO-200`).
3. User is operating within Owner A's authenticated session.

# Steps
1. As logged-in Owner A, attempt direct URL navigation to `/offers/detail?id=OFF-2001`.
2. Inspect the HTTP response and interface presentation.
3. Send an authenticated GET request to `/api/offers/OFF-2001` using Owner A's session token.
4. Observe error message, status code, and redirect behavior.

# Expected Result
1. The server compares the parent tender's `owner_id` against the authenticated session user's ID.
2. The mismatch is identified, and access to view the offer details is strictly denied.
3. The error message `"Unauthorized access"` is presented to the user.
4. The API responds with HTTP 403 Forbidden.
5. No confidential professional credentials, pricing, or attached files are exposed.
6. The user is redirected back to Owner A's "My Tenders" dashboard.

# Notes
- Directly validates alternative flow E2 in UF-07 and BR-12 ("A Tender Owner cannot access or manage another owner's private tender information").

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
