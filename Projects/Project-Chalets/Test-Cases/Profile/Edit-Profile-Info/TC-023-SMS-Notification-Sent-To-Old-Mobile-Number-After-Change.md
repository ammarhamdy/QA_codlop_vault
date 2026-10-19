---
tc_id: TC-Info-023
title: Verify SMS Notification Is Sent to the Old Mobile Number After Change
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
| New Ohone | 554718369 |
| OTP       | ****      |

# Preconditions
-The mobile number has been changed successfully.
# Steps
1. Change the mobile number using a valid OTP.
2. Check the SMS messages received on the old number.
# Expected Result
-An SMS is sent to the old number with the message: "Your login number for your Tanfeez account has been changed. If you did not make this change, please contact us."
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*