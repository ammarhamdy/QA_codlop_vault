---
tc_id: TC-PT-019
title: Verify Disabled Property Type is Hidden from Property Edit Form
priority: High
status: Ready
type: Regression
linked_requirement: BR-PT-003, BR-PT-005
tags:
  - test-case
  - business-rule
  - integration
  - regression
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Villa (Enabled) |
| Property Type | Warehouse (Disabled) |
| Existing Property | "Sunset Villa" of type Villa |

# Preconditions
- User is logged in as an administrator.
- An existing Property "Sunset Villa" exists with Property Type "Villa" (Enabled).
- A Property Type "Warehouse" exists with status Disabled.

# Steps
1. Navigate to Property Management → Edit Existing Property "Sunset Villa".
2. Locate the Property Type dropdown / selection field.
3. Open the dropdown and observe the available options.
4. Verify that "Villa" (Enabled) appears in the list.
5. Verify that "Warehouse" (Disabled) does NOT appear in the list.

# Expected Result
- Only Enabled Property Types are listed in the Property edit form.
- Disabled Property Types (e.g., Warehouse) are hidden.
- The user cannot change an existing Property to a Disabled Property Type.

# Notes
- BR-PT-003: "Only Enabled Property Types shall appear when editing an existing Property."
- If the existing Property is already assigned to a now-Disabled Property Type, that Type should still be displayed as the current (read-only) value but not selectable for new assignments. TODO: Clarify expected behaviour.

# Attachments
