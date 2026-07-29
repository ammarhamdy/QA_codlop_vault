---
tc_id: TC-PT-018
title: Verify Disabled Property Type is Hidden from Property Creation Form
priority: High
status: Ready
type: Regression
linked_requirement: BR-PT-002, BR-PT-005
tags:
  - test-case
  - business-rule
  - integration
  - regression
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Warehouse (Disabled) |
| Property Type | Apartment (Enabled) |

# Preconditions
- User is logged in as an administrator.
- A Property Type "Apartment" exists with status Enabled.
- A Property Type "Warehouse" exists with status Disabled.

# Steps
1. Navigate to Property Management → Add New Property.
2. Locate the Property Type dropdown / selection field.
3. Open the dropdown and observe the available options.
4. Verify that "Apartment" (Enabled) appears in the list.
5. Verify that "Warehouse" (Disabled) does NOT appear in the list.

# Expected Result
- Only Enabled Property Types are listed in the Property creation form.
- Disabled Property Types (e.g., Warehouse) are hidden.
- The user cannot select a Disabled Property Type when creating a new Property.

# Notes
- BR-PT-002: "Only Enabled Property Types shall appear when creating a new Property."
- BR-PT-005: "Disabled Property Types shall be hidden from Property creation forms."

# Attachments
