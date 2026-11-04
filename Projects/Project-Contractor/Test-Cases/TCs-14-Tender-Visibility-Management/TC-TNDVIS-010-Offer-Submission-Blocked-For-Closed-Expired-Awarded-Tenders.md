---
tc_id: TC-TNDVIS-010
title: Verify System Blocks Offer Submissions Against Closed, Expired, and Awarded Tenders
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Target 1 | Target 2 | Target 3 |
| ----- | -------- | -------- | -------- |
| Target Tender ID | `TND-1010-Closed` | `TND-1010-Expired` | `TND-1010-Awarded` |
| Target Status | `Closed` | `Expired` | `Awarded` |
| Expected Status Code | `422 Unprocessable Entity` / `400 Bad Request` | `422 / 400` | `422 / 400` |
| Expected Message | `"Cannot submit offers to closed, expired, or awarded tenders"` |

# Preconditions
1. Database contains Tender 1 (`Closed`), Tender 2 (`Expired`), and Tender 3 (`Awarded`).
2. Requester has a valid offer submission payload.

# Steps
1. Send an HTTP POST request with offer payload to `/api/tenders/TND-1010-Closed/offers`.
2. Send an HTTP POST request with offer payload to `/api/tenders/TND-1010-Expired/offers`.
3. Send an HTTP POST request with offer payload to `/api/tenders/TND-1010-Awarded/offers`.
4. Observe HTTP status codes and response bodies for all three requests.

# Expected Result
1. The system evaluates the action type as Offer Submission.
2. The system confirms that each target tender is in an ineligible status (`Closed`, `Expired`, or `Awarded`).
3. All three requests are rejected with HTTP 422 Unprocessable Entity or HTTP 400 Bad Request.
4. The error message `"Cannot submit offers to closed, expired, or awarded tenders"` is returned.
5. No offer records are created in the database.
6. Adheres strictly to BR-04, BR-06, and BR-07.

# Notes
- Directly validates alternative flow E3 in UF-14, BR-04, BR-06, and BR-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
