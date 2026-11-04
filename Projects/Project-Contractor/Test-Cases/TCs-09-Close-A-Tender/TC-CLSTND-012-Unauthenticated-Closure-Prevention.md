---
tc_id: TC-CLSTND-012
title: Verify Route Protection Blocks Unauthenticated Access to Tender Closure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Tender ID | `TND-601` |
| Direct Endpoint | POST `/api/tenders/601/close` |
| Auth State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Send an unauthenticated HTTP POST request to `/api/tenders/601/close` without an Authorization header.
3. Observe the API response code.
4. Attempt direct UI navigation to the tender closure route in the browser.
5. Observe UI navigation behavior.

# Expected Result
1. Direct UI navigation is blocked, and the application redirects the user to the Authentication / Login screen (`SCR-AUTH-01`).
2. The unauthenticated API request is rejected with HTTP 401 Unauthorized.
3. The tender status remains unaltered.

# Notes
- Validates the precondition of UF-09 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
