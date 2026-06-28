---
tc_id: TC-CERT-019
title: Verify Certificate Availability After Account Reactivation
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
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User has successfully completed a program and already received a certificate. The user account is deactivated by an administrator.
# Steps
1. Log in as an administrator and deactivate the user's account.  
2. Reactivate the same user account.  
3. Log in using the reactivated account.
4. Observe the certificate
   
# Expected Result
The previously earned certificate is still available and accessible after account reactivation. No certificate data is lost or regenerated unless specified by the business requirements.
# Notes

# Attachments
