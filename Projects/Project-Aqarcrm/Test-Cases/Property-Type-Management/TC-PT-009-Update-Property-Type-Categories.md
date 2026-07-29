---
tc_id: TC-PT-009
title: Update Property Type Associated Categories Successfully
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-003, BR-PT-007
tags:
  - test-case
  - update
  - positive
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Building |
| Original Categories | Residential, Commercial |
| Updated Categories | Commercial, Industrial |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Building" exists with categories Residential and Commercial.
- Property Categories Commercial and Industrial exist.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Building" Property Type.
3. Click "Edit".
4. Remove the "Residential" category.
5. Add the "Industrial" category.
6. Leave "Commercial" selected.
7. Click "Save".
8. Observe the confirmation message.
9. Verify the Property Type now shows categories: Commercial, Industrial.

# Expected Result
- The Property Type's associated categories are updated to Commercial and Industrial.
- The system displays a success confirmation message.
- The updated categories appear immediately in the Property Type details and in all consuming modules.

# Notes
- BR-PT-007: "A Property Type may belong to one or more Property Categories."

# Attachments
