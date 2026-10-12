---
tc_id: TC-PT-013
title: Delete Unreferenced Property Type Successfully
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-004
tags:
  - test-case
  - delete
  - positive
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Warehouse |
| Property Categories | Industrial |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Warehouse" exists.
- The "Warehouse" Property Type is not assigned to any existing Property in the system.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Warehouse" Property Type.
3. Click "Delete" or the equivalent action.
4. Confirm the deletion when prompted.
5. Observe the confirmation message.
6. Verify the Property Type no longer appears in the list.

# Expected Result
- The Property Type "Warehouse" is permanently deleted.
- The system displays a success confirmation message.
- The Property Type is removed from the list and no longer available in any forms or filters.

# Notes
- Deletion is permanent. There is no indication of soft-delete in the requirements.

# Attachments
