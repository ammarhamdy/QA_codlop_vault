---
tc_id: TC-PD-Q-002
title: Verify Anonymous Question Submission
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Bharqan-Product-Details
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field    | Value           |
| -------- | --------------- |
| Name     | fatma           |
| Email    | fatma@gmail.com |
| Question | Available now?  |

# Preconditions
-User is logged in and on  Product Details page.
# Steps
1. fill fields with valid data.
2. Check the **Anonymous** option (Hide Name).
3. Click Send.. 
# Expected Result
-The Question is submitted successfully without showing the user's name (displayed as Anonymous).
# Notes

# Attachments
