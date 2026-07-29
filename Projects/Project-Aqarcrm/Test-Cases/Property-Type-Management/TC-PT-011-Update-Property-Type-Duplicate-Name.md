---
tc_id: TC-PT-011
title: Update Property Type with Duplicate Name
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-003
tags:
  - test-case
  - update
  - validation
  - negative
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Villa |
| Updated Name | Apartment |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Villa" exists.
- A Property Type named "Apartment" already exists in the system.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Villa" Property Type.
3. Click "Edit".
4. Change the Name field from "Villa" to "Apartment".
5. Click "Save".
6. Observe the system response.

# Expected Result
- The system shall not update the Property Type.
- A validation message is displayed indicating that the Property Type name must be unique.
- The Property Type retains its original name "Villa".

# Notes
- The uniqueness check should exclude the current record being edited (self-comparison).

# Attachments
