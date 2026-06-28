---
tc_id: TC-CERT-018
title: Certificate Cannot Be Shared Between Users
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
Two users (User A and User B) have valid certificates.
# Steps
1. Log in as **User A**.  
2. Copy the direct URL or identifier of **User B's** certificate (if applicable).  
3. Attempt to access or download User B's certificate using the copied link or modified request.
# Expected Result
-Access is denied. User A cannot view or download User B's certificate. Only the certificate owner is authorized to access their certificate.
# Notes

# Attachments
