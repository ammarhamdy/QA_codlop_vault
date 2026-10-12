---
tc_id: TC-PT-014
title: Delete Referenced Property Type (Blocked)
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-004
tags:
  - test-case
  - delete
  - validation
  - negative
run_result: Fail
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Apartment |
| Existing Property | "Sunset Apartments" of type Apartment |

# Preconditions
- User is logged in as an administrator.
- A Property Type named "Apartment" exists.
- At least one Property is assigned to the "Apartment" Property Type.

# Steps
1. Navigate to Property Settings → Property Types.
2. Locate the "Apartment" Property Type.
3. Click "Delete" or the equivalent action.
4. Observe the system response.

# Expected Result
- The system shall prevent deletion of the "Apartment" Property Type.
- An appropriate validation message is displayed (e.g., "Cannot delete Property Type because it is assigned to one or more Properties.").
- The Property Type remains in the list unchanged.

# Notes
- FR-PT-004: "Deletion shall only be allowed if the Property Type is not currently referenced by existing properties."

# Attachments
