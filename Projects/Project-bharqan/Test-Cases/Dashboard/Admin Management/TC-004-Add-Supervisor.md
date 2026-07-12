---
tc_id: TC-Admin-004
title: Verify Adding a Supervisor with Valid Data
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-012-Bharqan-Admin-Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value           |
| ------------ | --------------- |
| Name         | Fatma           |
| Email        | fatma@gmail.com |
| Pass         | Fa12345@        |
| Confirm Pass | Fa12345@        |

# Preconditions
-Admin opens  Add Admin form.
# Steps
1. Fill in all required fields.
2. Click Save
# Expected Result
-The Admin is added successfully and appears in the admins list.
# Notes

# Attachments
