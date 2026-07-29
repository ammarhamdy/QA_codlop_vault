---
tc_id: TC-PT-008
title: Update Property Type Name Successfully
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-003
tags:
  - test-case
  - update
  - positive
---

# Test Data
| Field | Value |
|-------|-------|
| Original Name | Apartment |
| Updated Name | Penthouse Apartment |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Apartment" exists with category Residential.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Apartment" Property Type.
3. Click "Edit" or the equivalent action.
4. Change the Name field from "Apartment" to "Penthouse Apartment".
5. Click "Save".
6. Observe the confirmation message.
7. Verify the Property Type list now shows "Penthouse Apartment".
8. Verify the change is reflected immediately in downstream modules (e.g., Property Management forms).

# Expected Result
- The Property Type name is updated to "Penthouse Apartment" successfully.
- The system displays a success confirmation message.
- The updated name appears immediately in the Property Types list.
- The updated name is reflected immediately in all consuming modules (Property Management, Public Website).

# Notes
- FR-PT-003 states: "The changes shall be reflected immediately throughout the system."

# Attachments
