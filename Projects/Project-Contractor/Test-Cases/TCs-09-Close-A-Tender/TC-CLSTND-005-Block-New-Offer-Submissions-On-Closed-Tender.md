---
tc_id: TC-CLSTND-005
title: Verify System Blocks New Offer Submissions Against Closed Tenders
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
| Tender ID | `TND-605` (Status: `Closed`) |
| In-Flight Offer Submission | Professional submitting an offer at the moment of closure |
| Direct Offer API | POST `/api/tenders/605/offers` |

# Preconditions
1. Tender `TND-605` has been updated to status `Closed`.
2. A professional attempts to submit an offer for `TND-605` (either via a stale open tab or direct API request).

# Steps
1. On a client browser displaying an open offer submission form for `TND-605`, click "Submit Offer".
2. Alternatively, trigger an HTTP POST request to `/api/tenders/605/offers` with valid offer details.
3. Observe the system response and status code.
4. Check the `tender_offers` table for new entries under `TND-605`.

# Expected Result
1. The server intercepts the submission and checks the tender's current status.
2. The submission is blocked and rejected with an explicit error indicating that the tender is closed and cannot receive new offers.
3. The API responds with HTTP 400 Bad Request or HTTP 409 Conflict.
4. No new offer record is inserted into the database.
5. Adheres strictly to BR-04 and BR-06 ("Closing a tender immediately prevents new offer submissions. Closed or expired tenders cannot receive new offers").

# Notes
- Directly validates Main Flow Step 4, BR-04, and BR-06 in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
