---
tc_id: TC-PT-004
title: Create Property Type with Duplicate Name
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-002
tags:
  - test-case
  - create
  - validation
  - negative
---

# Test Data
| Field | Value |
|-------|-------|
| Name | Apartment |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- A Property Type with the name "Apartment" already exists in the system.
- At least one Property Category exists.

# Steps
1. Navigate to Property Settings → Property Types.
2. Click "Add Property Type".
3. Enter "Apartment" in the Name field (a name that already exists).
4. Select at least one Property Category.
5. Click "Save".
6. Observe the system response.

# Expected Result
- The system shall not create the Property Type with a duplicate name.
- A validation message is displayed indicating that the Property Type name must be unique.
- No new Property Type is added to the list.

# Notes
- The uniqueness check may be case-sensitive or case-insensitive depending on business rules. TODO: Confirm expected case-sensitivity behaviour.

# Attachments
