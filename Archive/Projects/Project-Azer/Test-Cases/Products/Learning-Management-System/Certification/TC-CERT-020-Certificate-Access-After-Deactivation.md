---
tc_id: TC-CERT-020
title: Certificate Access After Account Deactivation During an Active Session
priority:
  - High
status:
  - Draft
type:
  - Security
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
User has successfully completed the program and received a certificate. The user is logged in with an active session.
# Steps
1. Log in as the user.  
2. Keep the session active.  
3. As an Administrator, deactivate the user's account.  
4. Return to the user's session and refresh the page or attempt to view/download the certificate
# Expected Result
The system detects that the account has been deactivated and immediately revokes access. The user cannot view or download the certificate and is redirected to the login page or shown an appropriate **"Account Deactivated"** message, according to the business requirements.
# Notes

# Attachments
