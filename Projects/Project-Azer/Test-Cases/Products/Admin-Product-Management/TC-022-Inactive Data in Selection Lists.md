---
tc_id: TC-022
title: Verify inactive related data is not available in selection lists
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-006
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
An administrator is logged into the admin panel 
# Steps
1. Deactivate an entity (e.g., service type).  
2. Go to Services & click on add new service.  
3. Open the dropdown for service type.
# Expected Result
The inactive or disabled entity should not appear in any related selection lists or dropdowns.
# Notes

# Attachments
