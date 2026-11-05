---
tc_id: TC-TNDDTL-009
title: Verify System Error Handling and Redirection for Non-Existent Tender ID
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Non-Existent Tender ID | `TND-999999` (does not exist in database) |
| Direct URL | `/tenders/detail?id=TND-999999` |
| Expected Error Message | `"Tender not found."` |
| Destination View | Tender Owner Dashboard / List (`My Tenders`) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender ID `TND-999999` does not exist in the database.

# Steps
1. In the browser address bar, navigate directly to `/tenders/detail?id=TND-999999`.
2. Await system query and observe the application response.
3. Inspect displayed error notification.
4. Verify subsequent automatic or user-prompted navigation.

# Expected Result
1. The system detects that the requested tender ID does not exist.
2. The specific error message `"Tender not found."` is displayed.
3. The system blocks rendering of the details view.
4. The user is redirected back to the "My Tenders" list view (`SCR-TND-02`).

# Notes
- Directly validates alternative flow E1 in UF-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
