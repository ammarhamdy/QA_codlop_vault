---
tc_id: TC-PT-010
title: Update Property Type with Empty Name
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-003
tags:
  - test-case
  - update
  - validation
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Villa |
| Updated Name | (empty) |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Villa" exists with at least one category.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Villa" Property Type.
3. Click "Edit".
4. Clear the Name field (set to empty).
5. Click "Save".
6. Observe the system response.

# Expected Result
- The system shall not update the Property Type.
- A validation message is displayed indicating that the Name field is required.
- The Property Type retains its original name "Villa".

# Notes
- The same validation rules that apply on Create should also apply on Update.

# Attachments
