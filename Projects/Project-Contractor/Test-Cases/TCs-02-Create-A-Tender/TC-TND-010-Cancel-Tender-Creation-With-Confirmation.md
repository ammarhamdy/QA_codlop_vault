---
tc_id: TC-TND-010
title: Verify Confirmation Prompt and Discard Behavior When Canceling Tender Creation
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Partially Filled Title | `Warehouse Foundation Pouring` |
| Partially Filled Budget | `250000` |
| Confirmation Dialog Message | `"Discard unsaved changes?"` |
| Destination View | Tender Owner Dashboard (`My Tenders`) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Fill in several form fields with partial project data (e.g., Title: `Warehouse Foundation Pouring`, Budget: `250000`).
2. Click the "Cancel" button or back navigation link.
3. Observe the confirmation modal / prompt.
4. Confirm the discard action by clicking "Discard" / "Yes".
5. Inspect navigation landing view and check "My Tenders" list.

# Expected Result
1. The system prompts the user with confirmation dialog: `"Discard unsaved changes?"`.
2. Upon confirmation, the entered form data is discarded.
3. No tender record is created or saved in the database.
4. The user is redirected to the Tender Owner dashboard ("My Tenders").

# Notes
- Directly validates alternative flow A1 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
