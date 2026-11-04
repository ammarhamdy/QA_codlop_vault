---
tc_id: TC-ACPOFF-011
title: Verify Route Protection Blocks Unauthenticated Access to Offer Acceptance
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
| Target Offer ID | `OFF-101` |
| Direct Accept API | POST `/api/offers/OFF-101/accept` |
| Session State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Send an unauthenticated POST request to `/api/offers/OFF-101/accept` without an Authorization header.
3. Observe the API response code.
4. Attempt direct navigation to the offer acceptance interface in the browser without being logged in.
5. Observe the UI navigation response.

# Expected Result
1. Direct UI navigation is blocked, and the user is redirected to the Application Login / Authentication screen (`SCR-AUTH-01`).
2. The unauthenticated API request is rejected with HTTP 401 Unauthorized.
3. No offer status update or project awarding occurs.

# Notes
- Validates the precondition of UF-08 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
