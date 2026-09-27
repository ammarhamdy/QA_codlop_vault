---
tc_id: TC-Work-013
title: Verify cover image  file size validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Our-Work
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the **Add Work** form.
# Steps
1. Upload a cover image within the allowed size .
 2. Repeat using files larger than the maximum size.
 3. Submit the form
# Expected Result
-Files within the valid size range should be accepted. Files exceeds the defined size limits should be rejected and an appropriate validation message should be displayed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*