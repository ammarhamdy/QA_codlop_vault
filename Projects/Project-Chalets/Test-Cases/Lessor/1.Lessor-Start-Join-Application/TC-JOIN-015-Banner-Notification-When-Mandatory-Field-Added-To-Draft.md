---
tc_id: TC-JOIN-015
title: Verify Draft Displays Top Banner When Admin Adds New Mandatory Field
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Newly Added Mandatory Field | `National Address Document` (`إثبات العنوان الوطني`) |
| Existing Application State | Unsubmitted Draft |
| Banner Visual Indicator | Information/Warning banner at top of form |

# Preconditions
1. User has an existing unsubmitted join draft created under previous field configurations.
2. In Admin Panel (UF-34), an administrator adds a new mandatory field to the applicant schema.

# Steps
1. As the applicant, open the application to resume the existing draft.
2. Observe the top area of the application form.
3. Check the form fields list for the newly added mandatory item.

# Expected Result
1. A prominent notification banner appears at the top of the form alerting the applicant that new requirements have been added.
2. The newly configured mandatory field is displayed in the form with required validation markers.
3. The applicant must complete this new field before being allowed to submit the application.

# Notes
- Requirement: UF-28 Alternative Flow A3 & UF-34 Flow A1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
