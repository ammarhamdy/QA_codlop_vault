---
tc_id: TC-PT-002
title: Create Property Type with Single Property Category (Boundary)
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-002, BR-PT-008
tags:
  - test-case
  - create
  - boundary
  - positive
---

# Test Data
| Field | Value |
|-------|-------|
| Name | Commercial Plot |
| Property Categories | Commercial |

# Preconditions
- User is logged in as an administrator.
- At least one Property Category exists (Commercial).

# Steps
1. Navigate to Property Settings → Property Types.
2. Click "Add Property Type".
3. Enter "Commercial Plot" in the Name field.
4. Select exactly one Property Category: Commercial.
5. Click "Save".
6. Observe the confirmation message.

# Expected Result
- A new Property Type named "Commercial Plot" is created successfully with exactly one associated category.
- The system displays a success confirmation message.
- The Property Type appears in the list with status "Enabled".

# Notes
- This test verifies the minimum boundary for Property Categories (at least one is required by BR-PT-008).

# Attachments
