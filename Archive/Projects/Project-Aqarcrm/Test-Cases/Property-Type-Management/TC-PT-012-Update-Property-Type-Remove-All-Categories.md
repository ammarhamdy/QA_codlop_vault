---
tc_id: TC-PT-012
title: Update Property Type Removing All Associated Categories
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-003, BR-PT-008
tags:
  - test-case
  - update
  - validation
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Land |
| Original Categories | Residential, Commercial, Agricultural |
| Updated Categories | (none selected) |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Land" exists with categories Residential, Commercial, and Agricultural.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Land" Property Type.
3. Click "Edit".
4. Deselect / remove all associated Property Categories.
5. Click "Save".
6. Observe the system response.

# Expected Result
- The system shall not update the Property Type.
- A validation message is displayed indicating that at least one Property Category must be associated.
- The Property Type retains its original categories (Residential, Commercial, Agricultural).

# Notes
- BR-PT-008: "A Property Type cannot exist without at least one associated Property Category."

# Attachments
