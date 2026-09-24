---
tc_id: TC-Work-009
title: Verify work description length validation in Arabic and English
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
-Admin is on the **Add Work** form
# Steps
1. Enter an Arabic & English description with the exact allowed .
 2. Complete the remaining required fields.
 3. Click **Save/Add Work.
 4. Repeat using a description shorter than the minimum length.
 5. Repeat using a description longer than the maximum length.
# Expected Result
-Descriptions with the valid length should be accepted successfully. Descriptions shorter than the minimum or longer than the maximum should be rejected and an appropriate validation message should be displayed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*