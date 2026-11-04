---
tc_id: TC-TND-011
title: Verify Form Data Is Preserved When Dismissing Cancel Confirmation Prompt
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Filled Title | `School Building Maintenance` |
| Filled City | `Dammam` |
| Filled Budget | `75000` |
| Prompt Action | Click `"Keep Editing"` / `"Cancel"` on confirmation modal |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Fill multiple tender fields with valid data (Title, City, Budget).
2. Click the "Cancel" action to trigger the `"Discard unsaved changes?"` prompt.
3. On the confirmation dialog, click the cancel/dismiss button (e.g., "Keep Editing" or "Cancel").
4. Inspect the form state and all input fields.

# Expected Result
1. The confirmation dialog closes without navigating away.
2. The user remains on the Create Tender form (`SCR-TND-01`).
3. All previously entered details (Title, City, Budget) remain intact and fully editable.
4. No data loss occurs.

# Notes
- Edge case / usability validation for alternative flow A1 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
