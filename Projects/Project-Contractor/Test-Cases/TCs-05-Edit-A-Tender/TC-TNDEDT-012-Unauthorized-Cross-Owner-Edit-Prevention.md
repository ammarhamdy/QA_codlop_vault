---
tc_id: TC-TNDEDT-012
title: Verify Authorization Control Prevents Editing Tenders Belonging to Other Owners (IDOR Prevention)
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Owner A (`owner_id: TO-100`) |
| Target Tender | `TND-300` (owned by Owner B, `owner_id: TO-200`) |
| Unauthorized Edit Request | Direct URL `/tenders/edit?id=TND-300` / PUT `/api/tenders/300` |
| Expected Result | Access denied, redirection to "My Tenders" |

# Preconditions
1. Tender Owner A (`TO-100`) is logged in.
2. Tender `TND-300` belongs to Tender Owner B (`TO-200`).
3. User is in Owner A's browser session.

# Steps
1. As logged-in Owner A, attempt direct navigation to `/tenders/edit?id=TND-300`.
2. Observe navigation response.
3. Send an authenticated HTTP PUT/PATCH request to update `TND-300` using Owner A's session token.
4. Observe API response code.

# Expected Result
1. The system verifies the tender's `owner_id` against the authenticated session user.
2. The ownership mismatch is detected and edit access is strictly denied.
3. The Edit Tender form is not exposed to Owner A.
4. The API request is rejected with HTTP 403 Forbidden.
5. Owner A is redirected to their own "My Tenders" dashboard (`SCR-TND-02`).
6. Owner B's tender remains unaltered.

# Notes
- Validates BR-12 ("Tender Owners can only manage tenders they have created. A Tender Owner cannot access or manage another owner's private tender information") and UF-05 Precondition.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
