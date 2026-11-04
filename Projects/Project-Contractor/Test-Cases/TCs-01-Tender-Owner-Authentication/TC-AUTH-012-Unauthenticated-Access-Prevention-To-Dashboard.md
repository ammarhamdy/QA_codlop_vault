---
tc_id: TC-AUTH-012
title: Verify Access Prevention and Redirect to Login When Unauthenticated User Accesses Dashboard
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Protected Target Route | Tender Owner Dashboard (`/tenders/my-tenders`) |
| Expected Redirect Target | Authentication / Login Screen (`SCR-AUTH-01`) |
| Auth State | No active session token |

# Preconditions
1. Browser context has no active authentication token or session cookies stored.
2. The user is completely unauthenticated.

# Steps
1. Open a clean browser window or private/incognito session.
2. Enter the direct URL for the Tender Owner dashboard ("My Tenders", e.g., `/tenders/my-tenders`).
3. Press Enter / navigate to the protected URL.
4. Observe the navigation response and interface displayed.

# Expected Result
1. The application detects the lack of a valid authentication session token.
2. Access to the Tender Owner dashboard is strictly denied.
3. The user is redirected to the Application Login / Authentication screen (`SCR-AUTH-01`).
4. An error or notification indicating required authentication may be displayed as appropriate.
5. No confidential tender owner data or features are accessible.

# Notes
- Validates the `post_failure` enforcement, access control boundary, and BR-01 / BR-12 prerequisites.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
