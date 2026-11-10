---
tc_id: TC-TND-013
title: Verify Authorization Control Blocks Unauthenticated Users from Creating Tenders
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Direct Form URL | `/tenders/create` (Create Tender route) |
| Session State | Unauthenticated (no session token) |
| Expected Redirect Target | Authentication Screen (`SCR-AUTH-01`) |

# Preconditions
1. Browser context has no active Tender Owner session or authentication token.
2. User is unauthenticated.

# Steps
1. Open a new private/incognito browser window.
2. Attempt direct URL navigation to the Create Tender form (`/tenders/create`).
3. Observe route protection response.
4. Attempt direct POST API request to create tender endpoint without authorization header.
5. Observe API response.

# Expected Result
1. Direct UI navigation is blocked; user is immediately redirected to the Authentication screen (`SCR-AUTH-01`).
2. The Create Tender form is not exposed to unauthenticated users.
3. The API request is rejected with HTTP 401 Unauthorized.
4. No tender is created in the database.

# Notes
- Directly validates precondition of UF-02 and BR-03 ("Only authenticated Tender Owners can create tenders").

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
