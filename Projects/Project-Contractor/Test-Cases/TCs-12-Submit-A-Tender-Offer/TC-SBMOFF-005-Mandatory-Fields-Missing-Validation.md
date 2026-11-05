---
tc_id: TC-SBMOFF-005
title: Verify Validation Highlighting and Submission Blocking When Mandatory Fields Are Missing
priority: High
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
| Professional Name | `[Empty]` |
| Professional Phone | `[Empty]` |
| Proposed Price | `[Empty]` |
| Duration | `[Empty]` |
| Proposal Description | `[Empty]` |
| Expected Error Message | `"Please provide valid contact and proposal information."` |

# Preconditions
1. Target tender is `Open`.
2. Professional is on the Offer Submission form (`SCR-OFF-04`).

# Steps
1. Navigate to the Offer Submission form.
2. Leave all required input fields blank.
3. Click the "Submit Offer" button.
4. Inspect the form interface and inline error indicators.

# Expected Result
1. The submission is blocked, and no offer record is created.
2. Missing mandatory fields are visually highlighted.
3. The inline error message is displayed: `"Please provide valid contact and proposal information."`.
4. The user resumes on the form at Step 2 to correct the entries.

# Notes
- Directly validates alternative flow E1 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
