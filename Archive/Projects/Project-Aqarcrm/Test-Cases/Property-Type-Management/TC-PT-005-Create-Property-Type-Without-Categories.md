---
tc_id: TC-PT-005
title: Create Property Type Without Property Categories (Required)
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-002, BR-PT-008
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
| Name | Farmland |
| Property Categories | (none selected) |

# Preconditions
- User is logged in as an administrator.
- At least one Property Category exists.

# Steps
1. Navigate to Property Settings → Property Types.
2. Click "Add Property Type".
3. Enter "Farmland" in the Name field.
4. Do not select any Property Category.
5. Click "Save".
6. Observe the system response.

# Expected Result
- The system shall not create the Property Type.
- A validation message is displayed indicating that at least one Property Category must be selected.
- No new Property Type is added to the list.

# Notes
- BR-PT-008 states: "A Property Type cannot exist without at least one associated Property Category."

# Attachments
