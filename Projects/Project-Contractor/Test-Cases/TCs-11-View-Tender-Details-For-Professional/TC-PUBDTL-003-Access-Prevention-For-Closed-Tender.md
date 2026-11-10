---
tc_id: TC-PUBDTL-003
title: Verify Access Prevention and Notice Display for Closed Tender
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-703` |
| Direct URL Target | `/tenders/TND-703` |
| Status | `Closed` |
| Expected Notice | `"This tender is no longer available or is closed."` |

# Preconditions
1. Tender `TND-703` exists in the database with status `Closed`.
2. User is unauthenticated (Professional).

# Steps
1. Navigate directly to the tender URL: `/tenders/TND-703` (or click a cached/bookmarked link).
2. Await system evaluation and response.
3. Observe the rendered view and HTTP response code.
4. Check whether project technical specifications, budget, and attachments are rendered.
5. Check whether the "Submit Offer" action button is accessible.

# Expected Result
1. Access to tender details is blocked per BR-04.
2. The system returns HTTP 403 / 404 and displays a prominent notice: `"This tender is no longer available or is closed."`
3. Sensitive specifications, technical details, and attachments are hidden from the user.
4. The "Submit Offer" action button is completely absent or permanently disabled.
5. A navigation link is provided to return to the public Browse Tenders catalog.

# Notes
- Validates Alternative Flow E2 and BR-04 regarding closed tender visibility suppression.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
