---
tc_id: TC-Phone-051
title: Verify that the existing phone remains unchanged until both OTP verifications succeed
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
| Field                    | Value |
| ------------------------ | ----- |
| Current Phone Number OTP | ****  |
| New Phone OTP            | ****  |

# Preconditions
-Customer has submitted a valid new phone.
# Steps
1. Complete current-phone verification only.  
2. Check the registered phone number.
# Expected Result
-The existing phone number remains registered because new-phone verification has not yet been completed. The new phone is not saved prematurely.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*