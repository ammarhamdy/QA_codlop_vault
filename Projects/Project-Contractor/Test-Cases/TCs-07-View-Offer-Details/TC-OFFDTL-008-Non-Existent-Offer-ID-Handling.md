---
tc_id: TC-OFFDTL-008
title: Verify System Error Handling and Redirection for Non-Existent Offer ID
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Non-Existent Offer ID | `OFF-999999` |
| Direct Request | `/offers/detail?id=OFF-999999` |
| Expected Error Message | `"Offer not found."` |
| Destination View | Received Offers List (`SCR-OFF-01`, UF-06) |

# Preconditions
1. Tender Owner is authenticated.
2. Offer ID `OFF-999999` does not exist in the database.

# Steps
1. Navigate directly to `/offers/detail?id=OFF-999999` in the browser address bar.
2. Await system query and observe the application response.
3. Inspect displayed error notification.
4. Verify destination landing view.

# Expected Result
1. The system detects that the requested offer ID does not exist.
2. An error notification is displayed stating: `"Offer not found."`.
3. The Offer Details screen is not rendered.
4. The user is redirected back to the Received Offers list view (`SCR-OFF-01`).

# Notes
- Directly validates alternative flow E1 in UF-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
