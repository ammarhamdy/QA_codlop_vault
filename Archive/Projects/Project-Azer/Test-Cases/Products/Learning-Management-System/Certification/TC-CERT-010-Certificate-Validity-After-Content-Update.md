---
tc_id: TC-CERT-010
title: Certificate Remains Valid After Program Content Update
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
-User  completed the program and received a certificate
# Steps
1. Complete the program and generate the certificate.  
2. Admin updates lessons, PDFs, quizzes, or chapter content within the program.  
3. User accesses the previously issued certificate
# Expected Result
- Previously issued certificate remains accessible and unchanged. Certificate data is not affected by content updates made after issuance.
# Notes

# Attachments
