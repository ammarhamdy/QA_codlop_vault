---
tc_id: TC-Work-008
title: Verify client name length validation in Arabic and English
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
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
1. Enter an Arabic &English client name with the exact allowed length.
2. Complete the remaining required fields.
3. Click **Save/Add Work**.
4. Repeat using a name shorter than the minimum length.
5. Repeat using a name longer than the maximum length.
# Expected Result
-Client names with the valid length should be accepted successfully. Names shorter than the minimum or longer than the maximum should be rejected and an appropriate validation message should be displayed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*