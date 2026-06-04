---
tc_id: TC-009
title: Verify Admin View All Interest Requests
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | email/pass |
| Submitted Request         | -          |

# Preconditions
-At least one “Interest Request” has been submitted by clients
-An administrator account is available and logged into the admin panel.
# Steps
1. Log in to the administrator panel with valid credentials.
2. Navigate to the 'Interest Requests' .
3. Verify that the previously submitted client request(s) are listed.
4. For each request, verify the displayed information: Client Name, Email Address, Phone Number, Message Content, Request Type, and current Status.
# Expected Result
- All submitted interest requests should be displayed with their details.
- - The admin should be able to view and manage all records successfully.
# Notes

# Attachments
