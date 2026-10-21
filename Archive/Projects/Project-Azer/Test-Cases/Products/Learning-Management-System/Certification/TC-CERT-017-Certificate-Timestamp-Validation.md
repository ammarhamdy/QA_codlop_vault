---
tc_id: TC-CERT-017
title: Validate Certificate Generation Timestamp
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
-User has successfully completed the program and a certificate has been generated.
# Steps
1. Complete the final exam.  
2. Verify the issue date/time displayed on the certificate against the completion record.
# Expected Result
The certificate issue date/time matches the program completion timestamp
# Notes

# Attachments
