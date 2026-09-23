---
tc_id: TC-Work-007
title: Verify required fields validation when adding a work
priority:
  - High
status:
  - Draft
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
-Admin is on the **Add Work** form.
# Steps
1. Leave all required fields empty.
2. Click **Save/Add Work**.
# Expected Result
-Validation messages should be displayed for all required fields, and the work should not be added.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*