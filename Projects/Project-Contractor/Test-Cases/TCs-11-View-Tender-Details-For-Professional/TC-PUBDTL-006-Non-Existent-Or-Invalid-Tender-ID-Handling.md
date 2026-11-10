---
tc_id: TC-PUBDTL-006
title: Verify Error Handling and Redirection for Non-Existent or Invalid Tender ID
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
| Non-Existent Tender ID | `TND-99999` |
| Malformed Tender ID | `INVALID-@#$` |
| Direct URLs | `/tenders/TND-99999`, `/tenders/INVALID-@#$` |
| Expected Error Message | `"Tender not found."` |
| Expected Target Route | `/tenders` (`SCR-PUB-01`) |

# Preconditions
1. Neither `TND-99999` nor `INVALID-@#$` exists in the database.
2. User is unauthenticated (Professional).

# Steps
1. Navigate directly to `/tenders/TND-99999`.
2. Observe system error handling and feedback.
3. Verify if an error notification `"Tender not found."` is displayed.
4. Verify whether the browser is redirected to the public Browse Tenders catalog (`SCR-PUB-01`).
5. Repeat steps with the malformed identifier `/tenders/INVALID-@#$`.

# Expected Result
1. The server returns HTTP 404 Not Found.
2. The user is presented with the clear error message: `"Tender not found."`
3. The system automatically redirects the user to the Browse Tenders catalog (`SCR-PUB-01`).
4. No application crash, raw stack trace, or blank unhandled screen occurs.

# Notes
- Validates Alternative Flow E1 in UF-11.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
