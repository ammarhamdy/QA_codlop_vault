---
tc_id: TC-Info-035
title: Verify that OTP is sent to the current phone after submitting a valid new phone number
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
| Field                       | Value     |
| --------------------------- | --------- |
| Current phone number        | 512347891 |
| New Phone number            | 569123745 |
| OTP on Current Phone Number | ****      |

# Preconditions
-Valid and available new phone number was submitted.
# Steps
1. Click on Change phone number.
2. Enter New Phone number.
3. Click on Verify Phone number.  
4. Check the current registered phone.
# Expected Result
-An OTP is sent to the customer's current registered phone number, and the customer is prompted to enter the OTP to verify account ownership.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*