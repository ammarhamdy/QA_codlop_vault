---
tc_id: TC-SBMOFF-013
title: Verify System Enforces Offer Immutability and Displays No-Edit/Withdrawal Notice
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Submitted Offer ID | `OFF-850` |
| Expected Notice | Reminder that submitted offers cannot be edited or withdrawn |
| Modification Attempts | PUT `/api/offers/OFF-850`, DELETE `/api/offers/OFF-850` |

# Preconditions
1. Professional has successfully submitted offer `OFF-850` for an open tender.
2. The submission confirmation screen is currently displayed.

# Steps
1. Inspect the confirmation screen / dialog following submission.
2. Verify the presence of the notice explicitly reminding the professional that submitted offers cannot be edited or withdrawn.
3. Check the UI for any edit, update, cancel, or delete buttons for the submitted offer.
4. Send an HTTP PUT request to `/api/offers/OFF-850` attempting to alter price or description.
5. Send an HTTP DELETE request to `/api/offers/OFF-850` attempting to withdraw the offer.

# Expected Result
1. The confirmation screen explicitly states that submitted offers cannot be edited or withdrawn per BR-09.
2. The UI does not provide any controls to edit or withdraw the offer.
3. The API rejects PUT and DELETE requests with HTTP 405 Method Not Allowed or HTTP 403 Forbidden.
4. The offer remains unchanged in `Pending` status.
5. Adheres strictly to BR-09 ("Professionals cannot edit submitted offers. Professionals cannot withdraw submitted offers").

# Notes
- Validates Main Flow Step 7, post_success condition, and BR-09 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
