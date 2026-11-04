---
tc_id: TC-SBMOFF-012
title: Verify System Prevents Submitting Offers Against Non-Existent Tenders
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Non-Existent Tender ID | `TND-999999` |
| Direct Request | POST `/api/tenders/999999/offers` with valid offer payload |
| Expected HTTP Status | `404 Not Found` |

# Preconditions
1. Tender ID `TND-999999` does not exist in the platform database.
2. User has a valid offer payload.

# Steps
1. Attempt direct navigation to `/tenders/999999/submit-offer` in the browser.
2. Alternatively, send an HTTP POST request to `/api/tenders/999999/offers` with a complete valid offer payload.
3. Observe system response and status code.

# Expected Result
1. The server validates the existence of the parent tender.
2. The request is rejected with HTTP 404 Not Found or an explicit error indicating that the tender does not exist.
3. No orphaned offer record is inserted into the `tender_offers` table.
4. Adheres strictly to BR-08 ("Each offer must be associated with an existing tender").

# Notes
- Validates data integrity rule in BR-08 and boundary condition for parent tender existence.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
