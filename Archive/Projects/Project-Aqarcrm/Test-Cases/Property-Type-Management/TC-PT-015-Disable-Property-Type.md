---
tc_id: TC-PT-015
title: Disable an Enabled Property Type
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
| Property Type | Apartment |
| Initial Status | Enabled |
| Updated Status | Disabled |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Apartment" exists with status Enabled.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Apartment" Property Type.
3. Click the status toggle or "Disable" action.
4. Confirm the action if prompted.
5. Observe the confirmation message.
6. Verify the Property Type now shows status "Disabled" in the list.

# Expected Result
- The Property Type "Apartment" is successfully disabled.
- The system displays a success confirmation message.
- The status column shows "Disabled" for the Property Type.

# Notes
- After disabling, verify related business rules: hidden from creation/edit forms and public website filters (see TC-PT-018, TC-PT-019, TC-PT-020).

# Attachments
