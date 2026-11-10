---
tc_id: TC-OFFDTL-010
title: Verify Route Protection Blocks Unauthenticated Access to Offer Details
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target URL | `/offers/detail?id=OFF-1001` |
| Auth State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Enter the direct URL `/offers/detail?id=OFF-1001` into the address bar.
3. Press Enter / navigate to the URL.
4. Send an unauthenticated GET request to `/api/offers/OFF-1001` without an Authorization header.
5. Observe the UI navigation and API response.

# Expected Result
1. Direct UI navigation is intercepted; the application redirects the user to the Authentication / Login screen (`SCR-AUTH-01`).
2. No offer data, professional phone numbers, pricing, or attachments are exposed.
3. The API request responds with HTTP 401 Unauthorized.

# Notes
- Validates the precondition of UF-07 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
