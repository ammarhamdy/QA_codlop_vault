---
tc_id: TC-PT-016
title: Enable a Disabled Property Type
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-005
tags:
  - test-case
  - enable-disable
  - positive
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Land |
| Initial Status | Disabled |
| Updated Status | Enabled |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Land" exists with status Disabled.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Land" Property Type.
3. Click the status toggle or "Enable" action.
4. Confirm the action if prompted.
5. Observe the confirmation message.
6. Verify the Property Type now shows status "Enabled" in the list.
7. Verify the Property Type appears again in Property creation forms, Property edit forms, and public website search filters.

# Expected Result
- The Property Type "Land" is successfully enabled.
- The system displays a success confirmation message.
- The status column shows "Enabled" for the Property Type.
- The Property Type is again visible in Property creation forms, Property edit forms, and public website search filters.

# Notes
- Verification of visibility in downstream forms and filters is essential for regression.

# Attachments
