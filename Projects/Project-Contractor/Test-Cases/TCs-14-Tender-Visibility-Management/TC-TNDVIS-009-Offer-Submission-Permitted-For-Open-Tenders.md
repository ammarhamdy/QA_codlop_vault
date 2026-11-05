---
tc_id: TC-TNDVIS-009
title: Verify System Permits Offer Submission Against Active Open Tenders
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Tender ID | `TND-1009` (Status: `Open`, `end_date > CURRENT_TIMESTAMP`) |
| Offer Payload | Valid proposal (Price: `50,000`, Duration: `15`, Name: `Fahad`, Phone: `+966501112233`) |
| Endpoint | POST `/api/tenders/TND-1009/offers` |
| Expected HTTP Status | `200 OK` / `201 Created` |

# Preconditions
1. Tender `TND-1009` has status `Open` and its expiration date is in the future.
2. User is an anonymous Professional.

# Steps
1. Construct a valid offer submission payload.
2. Send an HTTP POST request to `/api/tenders/TND-1009/offers`.
3. Inspect HTTP status code and response payload.

# Expected Result
1. The system evaluates the action type as Offer Submission.
2. The system confirms that `TND-1009` is `Open` and unexpired.
3. The request is accepted, and the offer record is successfully created with status `Pending`.
4. The API returns HTTP 200 OK or HTTP 201 Created.

# Notes
- Validates Main Flow Step 5 and BR-04 in UF-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
