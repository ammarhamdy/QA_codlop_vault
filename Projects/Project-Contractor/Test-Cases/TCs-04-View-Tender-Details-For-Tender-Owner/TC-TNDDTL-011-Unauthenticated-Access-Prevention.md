---
tc_id: TC-TNDDTL-011
title: Verify Route Protection Blocks Unauthenticated Access to Tender Details
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Protected Target URL | `/tenders/detail?id=TND-101` |
| Session State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Enter the direct URL for tender details: `/tenders/detail?id=TND-101`.
3. Press Enter / navigate to the URL.
4. Send an unauthenticated GET request to `/api/tenders/101` without an Authorization header.
5. Observe the UI navigation and API response.

# Expected Result
1. Direct UI navigation is blocked; the application intercepts the request and redirects the user to the Authentication / Login screen (`SCR-AUTH-01`).
2. No tender details, images, attachments, or offers are exposed.
3. The API request responds with HTTP 401 Unauthorized.

# Notes
- Validates the precondition of UF-04 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
