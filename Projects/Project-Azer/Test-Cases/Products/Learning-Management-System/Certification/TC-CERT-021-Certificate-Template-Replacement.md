---
tc_id: TC-CERT-021
title: Certificate Behavior After Certificate Template Replacement
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
-User has already completed a program and received a certificate. An administrator has permission to update the certificate template.
# Steps
1. Verify that the user has an existing certificate.  
2. Log in as an administrator.  
3. Replace or update the certificate template (e.g., logo, layout, or design).  
4. Save and publish the new template.  
5. Log in as the user.  
6. Open or download the previously issued certificate.
# Expected Result
Previously issued certificates remain accessible and are displayed correctly according to the defined business requirements.
# Notes

# Attachments
