---
tc_id: TC-MYTND-011
title: Verify Route Protection Blocks Unauthenticated Access to "My Tenders"
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Protected Route | `/tenders/my-tenders` |
| Session State | Unauthenticated (no valid session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a clean browser window or incognito session.
2. Attempt direct navigation to `/tenders/my-tenders`.
3. Observe route protection and redirect behavior.
4. Send an unauthenticated GET request to the "My Tenders" API endpoint (`/api/tenders/my-tenders`).
5. Observe API response code.

# Expected Result
1. Direct navigation is blocked; user is redirected to the Application Login / Authentication screen (`SCR-AUTH-01`).
2. No tender records, owner data, or private management interfaces are displayed.
3. The API request responds with HTTP 401 Unauthorized.

# Notes
- Directly validates precondition of UF-03 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
