---
tc_id: TC-TNDEDT-005
title: Verify Validation Highlighting and Submission Prevention When Mandatory Field Is Cleared
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Action / Value |
| ----- | -------------- |
| Title Field | Cleared to empty string `""` |
| Description Field | Cleared to empty string `""` |
| Expected Error Messages | `"Title cannot be empty"`, `"Description cannot be empty"` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Edit Tender form for an unawarded tender (`TND-205`).

# Steps
1. Navigate to the Edit Tender form.
2. Select the Title input field and delete its contents completely.
3. Select the Description input field and delete its contents completely.
4. Click the "Save Changes" button.
5. Inspect the form interface and error indicators.

# Expected Result
1. The submission is blocked and no changes are saved to the database.
2. The affected mandatory fields are visually highlighted with inline error messages (e.g., `"Title cannot be empty"`).
3. The user remains on the Edit Tender form at Step 3, with other modified entries preserved.
4. The database retains the previous valid values.

# Notes
- Directly validates alternative flow E2 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
