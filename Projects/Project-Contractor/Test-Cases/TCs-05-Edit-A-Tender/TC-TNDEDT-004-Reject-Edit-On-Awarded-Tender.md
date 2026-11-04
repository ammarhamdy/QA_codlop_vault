---
tc_id: TC-TNDEDT-004
title: Verify System Rejection When Attempting to Edit an Awarded Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-204` |
| Tender Status | `Awarded` (An offer has been accepted) |
| Direct Edit URL | `/tenders/edit?id=TND-204` |
| Expected Error Message | `"Editing is not allowed after an offer has been accepted."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-204` is owned by the user, but an offer has already been accepted (status = `Awarded`).
3. User attempts direct navigation to the edit route or submits an edit API request.

# Steps
1. Attempt direct navigation to `/tenders/edit?id=TND-204` in the browser.
2. Alternatively, trigger an HTTP PUT/PATCH request to update `TND-204`.
3. Observe system validation and error response.
4. Verify destination landing page.

# Expected Result
1. The server checks the tender status and identifies it as `Awarded`.
2. The edit request is strictly rejected.
3. The error message `"Editing is not allowed after an offer has been accepted."` is presented to the user.
4. The Edit Tender form is not rendered and no updates are persisted.
5. The user is redirected back to the Tender Details view (`UF-04`).

# Notes
- Directly validates alternative flow E1 in UF-05 and BR-05 ("Editing is not allowed after an offer has been accepted").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
