---
tc_id: TC-TNDEDT-003
title: Verify Informational Banner Display When Editing a Tender with Received Offers
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
| Tender ID | `TND-203` |
| Received Offers Count | `3` offers (all pending/unaccepted) |
| Expected Informational Notice | `"This tender has existing offers. Editing details will update the tender specifications for all bidders."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-203` belongs to the owner and has received 3 offers from professionals.
3. No offer has been accepted (status is `Open`).

# Steps
1. Navigate to Tender Details for tender `TND-203`.
2. Click the "Edit Tender" button.
3. Observe the header area and banner alerts on the newly opened Edit Tender form.
4. Modify a project specification (e.g., Description or Budget).
5. Click "Save Changes".

# Expected Result
1. The system permits editing per BR-05 ("Editing is allowed even after receiving offers").
2. An explicit informational notice is clearly displayed: `"This tender has existing offers. Editing details will update the tender specifications for all bidders."`.
3. The user can proceed with modifying and saving updated specifications.
4. Existing offers remain associated with the tender following the update.

# Notes
- Directly validates alternative flow A1 in UF-05 and BR-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
