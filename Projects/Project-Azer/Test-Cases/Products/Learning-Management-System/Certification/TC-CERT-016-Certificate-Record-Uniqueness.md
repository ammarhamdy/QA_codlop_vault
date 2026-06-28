---
tc_id: TC-CERT-016
title: Verify No Duplicate Certificate Records
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
1. Complete the program using different user accounts.  
2. Generate certificates for each user.  
3. Verify the certificate identifier for each generated certificate.
# Expected Result
-Each certificate is assigned a unique identifier. No duplicate Certificate IDs are generated.
# Notes

# Attachments
