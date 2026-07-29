---
tc_id: TC-PT-001
title: Create Property Type Successfully with Valid Data
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-002
tags:
  - test-case
  - create
  - positive
---

# Test Data
| Field | Value |
|-------|-------|
| Name | Residential Land |
| Property Categories | Residential, Commercial, Agricultural |

# Preconditions
- User is logged in as an administrator.
- At least three Property Categories exist (Residential, Commercial, Agricultural).

# Steps
1. Navigate to Property Settings → Property Types.
2. Click "Add Property Type" or equivalent button.
3. Enter "Residential Land" in the Name field.
4. Select the following Property Categories: Residential, Commercial, Agricultural.
5. Click "Save" or equivalent submit button.
6. Observe the confirmation message.
7. Verify the new Property Type appears in the Property Types list.

# Expected Result
- A new Property Type named "Residential Land" is created successfully.
- The system displays a success confirmation message.
- The Property Type appears in the Property Types list with status "Enabled", associated categories (Residential, Commercial, Agricultural), creation date, and last update date.

# Notes
- Verify that the newly created Property Type is Enabled by default (see TC-PT-017).

# Attachments
