---
tc_id: TC-CLSTND-011
title: Verify Authorization Control Blocks Closing Tenders Owned by Other Users (IDOR Prevention)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Tender Owner A (`owner_id: TO-100`) |
| Target Tender | `TND-700` (owned by Owner B, `owner_id: TO-200`) |
| Direct Request | POST `/api/tenders/700/close` with Owner A's session token |

# Preconditions
1. Tender Owner A (`TO-100`) is logged in with an active session.
2. Tender `TND-700` belongs to Tender Owner B (`TO-200`) and is in `Open` status.
3. User is operating within Owner A's authenticated session.

# Steps
1. As Owner A, attempt to trigger closure on Owner B's tender `TND-700` via direct API request: POST `/api/tenders/700/close`.
2. Observe system response, error code, and error message.
3. Check database record for `TND-700`.

# Expected Result
1. The server compares the target tender's `owner_id` with the authenticated session user.
2. The mismatch is identified, and the unauthorized operation is blocked immediately.
3. The API responds with HTTP 403 Forbidden and an unauthorized access error.
4. Owner B's tender `TND-700` remains unaffected in `Open` status.
5. Adheres strictly to BR-12 ("Tender Owners can only manage tenders they have created").

# Notes
- Directly validates alternative flow E2 in UF-09 and BR-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
