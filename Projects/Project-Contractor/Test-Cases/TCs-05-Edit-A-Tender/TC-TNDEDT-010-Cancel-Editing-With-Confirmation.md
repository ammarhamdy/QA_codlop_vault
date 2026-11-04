---
tc_id: TC-TNDEDT-010
title: Verify Confirmation Prompt and Discard Behavior When Canceling Tender Edits
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-210` |
| Unsaved Edits | Modified title, altered budget value |
| Action | Click "Cancel" / Back button |
| Destination View | Tender Details View (`SCR-TND-03`, UF-04) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Edit Tender form for `TND-210` and has made multiple unsaved modifications to the form fields.

# Steps
1. Make noticeable changes to the Description and Budget fields on the Edit Tender form.
2. Click the "Cancel" button or back navigation arrow.
3. Observe the confirmation dialogue prompted by the system.
4. Click the confirmation option to discard changes (e.g., "Discard" / "Yes").
5. Inspect the rendered page and field values on the returned screen.

# Expected Result
1. The system prompts a confirmation modal to discard unsaved changes.
2. Upon confirmation, all unsaved changes are discarded.
3. The system navigates back to the Tender Details screen (`UF-04`).
4. The tender retains its original values without any modifications applied.

# Notes
- Directly validates alternative flow A2 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
