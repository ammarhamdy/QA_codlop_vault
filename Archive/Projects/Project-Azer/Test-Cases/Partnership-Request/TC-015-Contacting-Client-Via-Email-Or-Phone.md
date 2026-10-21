---
tc_id: TC-015
title: Verify client contact via email or phone
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                     | Value             |
| ------------------------- | ----------------- |
| Administrator Credentials | email/pass        |
| Client Email Address      | example@gmail.com |
| Client phone              | 50124144          |

# Preconditions
- An administrator is logged into the admin panel and is viewing a client request.
- A client request with a valid email address or phone is available
# Steps
1-Log in to the administrator panel and navigate to a specific partnership request.
2- Open the request details.
3-Click the displayed email address & phone number
# Expected Result
The admin should be able to contact the client using the displayed email or phone number.
# Notes

# Attachments
