---
tc_id: TC-Login-013
title: Verify multiple resend requests
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Time expired.
# Steps
1. Click Resend several times.
# Expected Result
-The system resends a new OTP for each allowed resend request, invalidates the previous OTP, and enforces the configured resend limit by displaying an appropriate error message once the limit is reached.
# Notes

# Attachments
