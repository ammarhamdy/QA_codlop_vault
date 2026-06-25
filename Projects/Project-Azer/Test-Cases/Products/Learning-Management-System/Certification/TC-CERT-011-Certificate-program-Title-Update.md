---
tc_id: TC-CERT-011
title: Certificate Behavior After program Title Update
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
-User has completed the program and received a certificate
# Steps
1. Generate certificate for Program A.  
2. Admin renames Program A.  
3. User reopens the certificate.
# Expected Result
Previously issued certificates remain consistent and accessible.
# Notes

# Attachments
