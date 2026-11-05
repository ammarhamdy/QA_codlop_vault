---
tc_id: TC-EXPTND-007
title: Verify System Blocks Offer Submissions Against Automatically Expired Tenders
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-908` (Status: `Expired`) |
| In-Flight Offer Submission | Professional submits an offer after expiration worker has run |
| API Endpoint | POST `/api/tenders/908/offers` |

# Preconditions
1. Tender `TND-908` has reached its expiration date and transitioned to `Expired`.
2. A professional attempts to submit an offer using a previously open browser tab or direct API request.

# Steps
1. Attempt to submit an offer for tender `TND-908` via the Offer Submission form (`SCR-OFF-04`).
2. Alternatively, trigger an HTTP POST request to `/api/tenders/908/offers` with valid offer parameters.
3. Observe the system response and HTTP status code.
4. Verify whether any new record is inserted into the `tender_offers` table.

# Expected Result
1. The server checks the tender status and expiration timestamp.
2. The submission is blocked and rejected with an explicit error indicating that the tender has expired and is no longer accepting offers.
3. No offer record is created in the database.
4. Adheres strictly to BR-04 and BR-07 ("Expired tenders cannot receive new offers").

# Notes
- Validates post_success condition, BR-04, and BR-07 in UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
