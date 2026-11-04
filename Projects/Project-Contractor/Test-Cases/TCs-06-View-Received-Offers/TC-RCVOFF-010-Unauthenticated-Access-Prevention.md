---
tc_id: TC-RCVOFF-010
title: Verify Route Protection Blocks Unauthenticated Access to Received Offers
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target URL | `/tenders/301/offers` |
| Auth State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Enter the direct URL `/tenders/301/offers` into the browser.
3. Press Enter / navigate to the URL.
4. Send an unauthenticated GET request to `/api/tenders/301/offers` without an Authorization header.
5. Observe the UI navigation and API response.

# Expected Result
1. Direct UI navigation is blocked; the application intercepts the request and redirects the user to the Authentication / Login screen (`SCR-AUTH-01`).
2. No offer listings, professional identities, or proposed prices are rendered.
3. The API request responds with HTTP 401 Unauthorized.

# Notes
- Validates the precondition of UF-06 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
