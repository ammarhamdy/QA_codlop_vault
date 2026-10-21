---
tc_id: TC-CERT-022
title: Certificate Behavior After Adding a New Program Stage
priority:
  - High
  - Low
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
-User has completed all program stages, passed the final exam, and received a certificate. -Administrator has permission to modify the program.
# Steps
1. User has successfully completed the program and received a certificate.  
2. Log in as an administrator.  
3. Add a new mandatory stage to the program and publish the changes.  
4. Log in as user.
5. Open the program and access the certificate
# Expected Result
-The user's previously earned certificate remains available and valid. The newly added stage does not affect users who completed the program before the update.
# Notes

# Attachments
