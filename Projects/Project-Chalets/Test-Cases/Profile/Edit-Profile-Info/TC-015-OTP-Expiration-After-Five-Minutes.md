---
tc_id: TC-Info-015
title: Verify OTP Expiration After Five Minutes
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field     | Value     |
| --------- | --------- |
| Old phone | 512345123 |
| New Ohone | 554718369 |
| OTP       | ****      |

# Preconditions
-An OTP was issued at least five minutes ago.
# Steps
1. Request an OTP.
2. Wait until five minutes have elapsed.
3. Enter the expired OTP.
# Expected Result
-The expired OTP is rejected, and the mobile number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*