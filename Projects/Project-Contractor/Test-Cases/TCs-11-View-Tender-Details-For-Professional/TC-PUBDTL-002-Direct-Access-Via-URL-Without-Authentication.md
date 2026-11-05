---
tc_id: TC-PUBDTL-002
title: Verify Direct Public Access to Tender Details via URL Without Authentication
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Direct URL Target | `/tenders/TND-702` |
| Tender ID | `TND-702` |
| Status | `Open` |
| Expiration Date | `2026-11-30 23:59` |
| Auth Headers / Cookies | None (Empty anonymous session) |

# Preconditions
1. Tender `TND-702` exists in the database with status `Open` and unexpired deadline (`end_date > CURRENT_TIMESTAMP`).
2. Client browser has no active auth cookies, Bearer tokens, or local storage session items.

# Steps
1. Open a new incognito/private browser window.
2. Directly enter the URL for the tender details page: `https://<domain>/tenders/TND-702`.
3. Press Enter to submit the request.
4. Observe network request headers and server HTTP response.
5. Inspect the rendered view.

# Expected Result
1. The server accepts the incoming request without requiring `Authorization` headers or redirection to an authentication gateway.
2. Server responds with HTTP 200 OK.
3. The Tender Details page (`SCR-PUB-02`) renders directly, displaying all project specifications.
4. No login prompt modal or phone OTP verification challenge is triggered.
5. The "Submit Offer" button is visible and active.

# Notes
- Validates BR-02 and BR-04 allowing public access to tender details without registration or login.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
