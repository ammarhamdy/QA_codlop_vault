---
tc_id: TC-Work-017
title: Verify required fields validation when editing a work
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Our-Work
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the **Edit Work** form.
# Steps
1. Clear the required fields .
2. Click **Save/Update**.
# Expected Result
-Validation messages should be displayed for all required fields, and the work should not be updated until the required fields are completed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*