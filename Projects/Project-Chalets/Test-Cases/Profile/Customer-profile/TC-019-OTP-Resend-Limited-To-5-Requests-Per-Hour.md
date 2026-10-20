---
tc_id: TC-Info-019
title: Verify Hourly OTP Sending Limit
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-The hourly sending limit has been reached.
# Steps
1. Request OTP messages until the hourly limit is reached.
2. Attempt an additional request that exceeds the limit.
# Expected Result
-The system rejects requests exceeding five OTP messages per hour, according to the defined counting rules.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*