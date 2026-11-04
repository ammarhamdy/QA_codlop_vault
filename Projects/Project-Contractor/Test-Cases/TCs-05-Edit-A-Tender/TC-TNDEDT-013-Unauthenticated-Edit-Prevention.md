---
tc_id: TC-TNDEDT-013
title: Verify Route Protection Blocks Unauthenticated Access to Edit Tender Flow
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target URL | `/tenders/edit?id=TND-201` |
| Session State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Enter the direct URL for editing a tender: `/tenders/edit?id=TND-201`.
3. Press Enter / navigate to the URL.
4. Send an unauthenticated PUT request to `/api/tenders/201` without an Authorization header.
5. Observe the UI navigation and API response.

# Expected Result
1. Direct UI navigation is blocked; the application intercepts the request and redirects the user to the Authentication / Login screen (`SCR-AUTH-01`).
2. The Edit Tender form is not rendered and no tender data is exposed.
3. The API request is rejected with HTTP 401 Unauthorized.
4. No modification is made to the tender record.

# Notes
- Validates precondition of UF-05 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
