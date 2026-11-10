---
tc_id: TC-RCVOFF-009
title: Verify Authorization Control Blocks Viewing Offers for Other Owners' Tenders (IDOR Prevention)
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Owner A (`owner_id: TO-100`) |
| Target Tender | `TND-400` (owned by Owner B, `owner_id: TO-200`) |
| Direct Request | `/tenders/400/offers` / GET `/api/tenders/400/offers` |
| Expected Result | Access blocked, security violation logged, unauthorized error |

# Preconditions
1. Tender Owner A (`TO-100`) is authenticated with a valid session.
2. Tender `TND-400` belongs to Tender Owner B (`TO-200`).
3. User is operating within Owner A's authenticated session.

# Steps
1. As Owner A, enter the direct URL `/tenders/400/offers` in the browser address bar.
2. Press Enter to navigate.
3. Observe route protection response.
4. Send an authenticated API request: GET `/api/tenders/400/offers` using Owner A's session token.
5. Inspect API response code and system security audit log.

# Expected Result
1. The server checks the tender ownership and determines `owner_id: TO-200` does not match the session (`TO-100`).
2. Access to view received offers is strictly blocked.
3. The system logs a security authorization violation.
4. An unauthorized error message is displayed, and the user is redirected away from the screen.
5. The API responds with HTTP 403 Forbidden.
6. No offer details or professional information submitted for Owner B's tender are leaked.

# Notes
- Directly validates alternative flow E1 in UF-06 and BR-12 ("A Tender Owner cannot access or manage another owner's private tender information").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
