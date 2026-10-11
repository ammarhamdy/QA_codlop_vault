---
tc_id: TC-Phone-049
title: Verify that the previous new-phone OTP becomes invalid after resend
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field         | Value |
| ------------- | ----- |
| Previous  OTP | ****  |
| New Phone OTP | ****  |

# Preconditions
-A previous new-phone OTP exists and a new OTP has been issued.
# Steps
1. Request **Resend OTP** after 60 seconds.  
2. Enter the previous OTP.  

# Expected Result
-The previous OTP is rejected after the new OTP is issued, new-phone verification does not succeed, and the phone change cannot be completed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*