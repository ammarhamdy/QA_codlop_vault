---
tc_id: TC-Admin-007
title: Verify minimum and maximum length validation for the Contact US Description
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
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
-Admin is on Contact Us settings page .

# Steps
1. Enter a Description with fewer than the minimum allowed characters and click Save.
2. Enter a Description with the maximum allowed number of characters and save.
3. Enter a Description exceeding the maximum allowed characters and save.
# Expected Result
-The system rejects Descriptions shorter than the minimum or longer than the maximum allowed length, displays the appropriate validation message, and accepts Descriptions within the allowed length.

# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*