---
tc_id: TC-Admin-027
title: Verify Profile Image Maximum Size Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Beauty-Dashboard-Management
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
-Admin on the **Add Supervisor** screen.
# Steps
1. Click the profile image upload field.
2. Select an image larger than 5 MB.
3. Click Save.
# Expected Result
-The image is not uploaded, an appropriate validation message is displayed indicating that the maximum allowed image size is **5 MB**.
# Notes

# Attachments
