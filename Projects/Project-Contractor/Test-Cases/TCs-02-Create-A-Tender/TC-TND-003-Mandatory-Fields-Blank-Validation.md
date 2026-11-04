---
tc_id: TC-TND-003
title: Verify Validation Highlighting and Submission Blocking When Mandatory Fields Are Blank
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field                 | Value                                                                    |
| --------------------- | ------------------------------------------------------------------------ |
| Title                 | `[Empty]`                                                                |
| Description           | `[Empty]`                                                                |
| Project Type          | `[Unselected]`                                                           |
| City                  | `[Empty]`                                                                |
| District              | `[Empty]`                                                                |
| Coordinates           | `[Unset]`                                                                |
| Project Area          | `[Empty]`                                                                |
| Budget                | `[Empty]`                                                                |
| Expiration Date       | `[Unset]`                                                                |
| Sample Error Messages | `"Title is required"`, `"Description is required"`, `"City is required"` |

# Preconditions
1. Tender Owner is authenticated.
2. User has opened the Create Tender form (`SCR-TND-01`).

# Steps
1. Navigate to the Create Tender form.
2. Leave all required input fields blank.
3. Click the "Publish Tender" button.
4. Inspect the form interface and inline indicators.

# Expected Result
1. The submission is blocked and no tender record is created.
2. All mandatory blank fields are visually highlighted with inline validation errors (e.g., `"Title is required"`).
3. The system remains at Step 2 of the creation flow, allowing the user to correct the missing fields.
4. No network persistence request creates an incomplete record.

# Notes
- Directly validates alternative flow E1 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
