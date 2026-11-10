---
tc_id: TC-RCVOFF-011
title: Verify System Error Handling When Requesting Offers for Non-Existent Tender
priority: Medium
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
| Non-Existent Tender ID | `TND-999999` |
| Direct URL | `/tenders/999999/offers` |
| Expected System Response | Tender not found error notification, redirection to My Tenders |

# Preconditions
1. Tender Owner is authenticated.
2. Tender ID `TND-999999` does not exist in the system database.

# Steps
1. Navigate directly to `/tenders/999999/offers` in the browser.
2. Await system query and observe the application response.
3. Inspect displayed error notification.
4. Verify navigation landing view.

# Expected Result
1. The system detects that the requested parent tender does not exist.
2. An error notification indicating that the tender was not found is displayed.
3. The offers view is not rendered.
4. The user is redirected back to the "My Tenders" dashboard (`SCR-TND-02`).

# Notes
- Edge case and boundary validation for invalid tender reference under UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
