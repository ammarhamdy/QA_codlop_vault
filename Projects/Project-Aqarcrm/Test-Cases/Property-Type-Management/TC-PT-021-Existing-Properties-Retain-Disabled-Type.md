---
tc_id: TC-PT-021
title: Verify Existing Properties Retain Their Assigned Disabled Property Type
priority: High
status: Ready
type: Regression
linked_requirement: BR-PT-006
tags:
  - test-case
  - business-rule
  - integration
  - regression
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Warehouse |
| Property | "City Warehouse" of type Warehouse |

# Preconditions
- User is logged in as an administrator.
- A Property Type "Warehouse" exists with status Enabled.
- A Property named "City Warehouse" exists and is assigned the "Warehouse" Property Type.
- Note the current Property Type of "City Warehouse" before disabling.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Warehouse" Property Type.
3. Disable the "Warehouse" Property Type.
4. Navigate to Property Management → View/Edit "City Warehouse".
5. Verify the Property Type field still shows "Warehouse" as the assigned type.
6. Navigate to the public website and view "City Warehouse" details.
7. Verify the Property Type is still displayed as "Warehouse".

# Expected Result
- Disabling the "Warehouse" Property Type does not change the Property Type assignment of "City Warehouse".
- The Property "City Warehouse" retains "Warehouse" as its Property Type in both the admin panel and the public website.

# Notes
- BR-PT-006: "Disabling a Property Type shall not modify existing properties already assigned to that Property Type. Existing property records shall preserve their assigned Property Type unless explicitly changed by an administrator."

# Attachments
