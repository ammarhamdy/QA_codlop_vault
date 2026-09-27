---
tc_id: TC-Work-038
title: Verify work visibility based on its status
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
-Published and draft works exist.
# Steps
1. Delete a published work from Admin.
2. Change a draft work status to Published.
3. Open the public website.
# Expected Result
-The deleted work is no longer displayed, while the newly published work is displayed in the Our Work section.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*