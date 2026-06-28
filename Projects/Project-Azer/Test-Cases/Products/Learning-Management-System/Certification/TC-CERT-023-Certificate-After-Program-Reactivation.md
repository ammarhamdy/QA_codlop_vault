---
tc_id: TC-CERT-023
title:
priority:
  - High
  - Medium
  - Low
status:
  - Draft
  - Ready
type:
  - Functional
  - Regression
  - API
linked_requirement: Verify Certificate After Program Reactivation
tags:
  - test-case
---

# Test Data
| Field     | Value   |
| --------- | ------- |
| User Role | Student |
|           |         |

# Preconditions
-User has successfully completed the program and received a certificate.
 -Administrator has permission to deactivate and reactivate the program
# Steps
1. Deactivate and reactivate the program as an administrator.
2. Log in as the user.
3. Access **My Certificates**.
4. Verify the previously issued certificate
# Expected Result
-The system handles access to the certificate according to the defined business requirements while the program is deactivated.
# Notes

# Attachments
