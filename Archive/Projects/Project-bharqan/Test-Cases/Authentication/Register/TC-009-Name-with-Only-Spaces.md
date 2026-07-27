---
tc_id: TC-Register-009
title: Verify Name with only spaces
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value              |
| ----- | ------------------ |
| Name  |                    |
| Email | fatma212@gmail.com |
| Phone | 01239743855        |

# Preconditions
-User is on Register screen.
# Steps
1. Open the Registration screen.
2. Enter spaces only in name field.
3. Enter a valid phone number.
4. Enter a valid email address.
5. Click **Register**.
# Expected Result
- A validation message should be displayed indicating that the **Full Name** field is required.
# Notes

# Attachments
