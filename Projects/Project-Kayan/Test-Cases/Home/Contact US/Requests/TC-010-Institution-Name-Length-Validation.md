---
tc_id: TC-Contact-010
title: Verify minimum and maximum length validation for the  Institution Name field
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Contact Form is displayed.
# Steps
1. Enter a name with fewer than the minimum allowed characters and click Save.
2. Enter a name with the maximum allowed number of characters and save.
3. Enter a name exceeding the maximum allowed characters and save.
# Expected Result
-The system rejects names shorter than the minimum or longer than the maximum allowed length, displays the appropriate validation message, and accepts names within the allowed length.

# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*