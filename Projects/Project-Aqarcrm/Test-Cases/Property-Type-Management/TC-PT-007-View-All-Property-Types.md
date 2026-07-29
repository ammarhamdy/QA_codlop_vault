---
tc_id: TC-PT-007
title: View All Property Types List
priority: High
status: Ready
type: Functional
linked_requirement: FR-PT-001
tags:
  - test-case
  - read
  - positive
---

# Test Data
| Field | Value |
|-------|-------|
| Existing Property Types | Land, Apartment, Building, Villa |

# Preconditions
- User is logged in as an administrator.
- At least three Property Types exist in the system, with a mix of Enabled and Disabled statuses.

# Steps
1. Navigate to Property Settings → Property Types.
2. Observe the Property Types list page.
3. Verify the list contains all existing Property Types.
4. For each Property Type, verify the following columns are displayed:
   - Name
   - Associated Property Categories
   - Status (Enabled / Disabled)
   - Creation date
   - Last update date

# Expected Result
- All existing Property Types are displayed in the list.
- Each row shows: Name, Associated Property Categories, Status, Creation date, and Last update date.
- Both Enabled and Disabled Property Types are visible to the administrator.

# Notes
- Sorting and filtering behaviour is not specified in the requirements. TODO: Confirm if sorting/filtering are expected.

# Attachments
