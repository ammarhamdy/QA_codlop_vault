---
tc_id: TC-Info-011
title: Verify That the Customer Cannot Change Their Mobile Number to the Same Registered Number
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
| Field     | Value     |
| --------- | --------- |
| Old phone | 512345123 |
| New Ohone | 512345123 |

# Preconditions
-The customer is logged in &The customer has a registered mobile number.
# Steps
1. Open Edit Profile.
2. Tap the Edit icon next to the mobile number.
3. Enter the same currently registered mobile number.
4. Tap Continue.
# Expected Result
- A clear validation message is displayed, such as "The new mobile number must be different from the current mobile number."
-  No OTP is sent.
- The registered mobile number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*