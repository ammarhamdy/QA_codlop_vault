---
tc_id: TC-TNDDTL-010
title: Verify Unauthorized Cross-Owner Access Control and Redirection (IDOR Prevention)
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Owner A (`owner_id: TO-100`) |
| Target Tender | `TND-202` (created and owned by Owner B, `owner_id: TO-200`) |
| Direct Request | `/tenders/detail?id=TND-202` |
| Expected Error Message | `"Unauthorized access"` |

# Preconditions
1. Tender Owner A (`TO-100`) is logged in with a valid session.
2. Tender `TND-202` belongs to Tender Owner B (`TO-200`).
3. Owner A does not have permission to manage or view private details of Owner B's tender.

# Steps
1. As logged-in Owner A, attempt direct URL navigation to `/tenders/detail?id=TND-202`.
2. Inspect the HTTP response and interface presentation.
3. Observe error message and redirect behavior.

# Expected Result
1. The server compares the tender's `owner_id` against the authenticated session user's ID.
2. The mismatch is identified and access to the private management details is strictly denied.
3. The error message `"Unauthorized access"` is presented to the user.
4. Private tender details, attached files, and received offers are not leaked.
5. The user is redirected back to Owner A's "My Tenders" list.

# Notes
- Directly validates alternative flow E2 in UF-04 and BR-12 ("A Tender Owner cannot access or manage another owner's private tender information").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
