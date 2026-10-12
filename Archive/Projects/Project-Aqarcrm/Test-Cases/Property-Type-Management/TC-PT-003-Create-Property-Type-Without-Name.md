---
tc_id: TC-PT-003
title: Create Property Type Without Name (Required Field)
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-002
tags:
  - test-case
  - create
  - validation
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Name | (empty) |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- At least one Property Category exists.

# Steps
1. Navigate to Property Settings → Property Types.
2. Click "Add Property Type".
3. Leave the Name field empty.
4. Select at least one Property Category.
5. Click "Save".
6. Observe the system response.

# Expected Result
- The system shall not create the Property Type.
- A validation message is displayed indicating that the Name field is required.
- No new Property Type is added to the list.

# Notes
- Also verify that the form does not submit a request to the backend when required fields are missing (client-side validation).

# Attachments
