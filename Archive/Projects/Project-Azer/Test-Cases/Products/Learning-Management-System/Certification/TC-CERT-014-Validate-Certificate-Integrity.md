---
tc_id: TC-CERT-014
title: Validate Certificate Data Integrity
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: REQ-005
tags:
  - test-case
---

# Test Data
| Field     | Value   |
| --------- | ------- |
| User Role | Student |
|           |         |

# Preconditions
-User completed program ,certificate is generated
# Steps
1. Pass all quiz for a program 
2. Compare the certificate details with the user profile and program data stored in the system.
# Expected Result
User name, program title, completion date, and other certificate details exactly match the stored data.
# Notes

# Attachments
