---
tc_id: TC-TNDEDT-001
title: Verify Successful Tender Modification, Database Update, and Timestamp Refresh
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
| Tender ID | `TND-201` |
| Original Description | `Basic warehouse shell construction.` |
| Updated Description | `Expanded turnkey warehouse construction with reinforced concrete flooring.` |
| Original Budget | `400000` |
| Updated Budget | `550000` |
| Updated Expiration Date | Extended to `+45 days` from today |
| Expected Success Message | `"Tender updated successfully"` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-201` is owned by the authenticated user and has status `Open`.
3. No offer has been accepted for this tender (status != `Awarded`).
4. User has opened the Edit Tender form (`SCR-TND-04`).

# Steps
1. Navigate to the Edit Tender form for tender `TND-201`.
2. Update the Description field to `Expanded turnkey warehouse construction with reinforced concrete flooring.`.
3. Adjust the Budget field from `400000` to `550000`.
4. Modify the expiration date to 45 days into the future.
5. Click the "Save Changes" button.
6. Await system processing.

# Expected Result
1. Mandatory fields, positive budget, and future expiration date validate successfully.
2. The tender record in the database is updated with the modified values.
3. The `updated_at` timestamp is refreshed to the current date and time.
4. A success notification is displayed: `"Tender updated successfully"`.
5. The system redirects the user to the Tender Details view (`UF-04`), where the updated information is immediately reflected.

# Notes
- Validates Main Flow (Steps 1 to 5), FR-07, and BR-05 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
