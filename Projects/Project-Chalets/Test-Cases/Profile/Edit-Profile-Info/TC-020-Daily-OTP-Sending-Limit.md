---
tc_id: TC-Info-020
title: Verify Daily OTP Sending Limit
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
-The daily sending limit has been reached.
# Steps
1. Request OTP messages until the daily limit is reached.
2. Attempt an additional request that exceeds the limit.
# Expected Result
-The system rejects requests exceeding 20 OTP messages per day, according to the defined counting rules.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*