---
tc_id: TC-Info-024
title: Verify System Behavior When Two Customers Check the Same Available Mobile Number Simultaneously
priority:
  - High
status:
  - Draft
type:
  - Security
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| User A phone | 596145672 |
| User B phone | 512354681 |
| New phone    | 599999999 |

# Preconditions
- User A and User B are logged in to separate accounts.
- Both accounts have different registered mobile numbers.
# Steps
1. Open Change Mobile Number for User A and User B.
2.  Enter the same target number in both accounts.
3. Submit the availability check simultaneously.
4.  Observe both responses.
# Expected Result
- The system handles both requests without server errors or inconsistent data.
- Neither user's registered mobile number changes.
- The availability results follow the defined reservation policy:
    - Without temporary reservation: both checks may succeed.
    - With temporary reservation at this stage: the system may accept one and reject the other.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*