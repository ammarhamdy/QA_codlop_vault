---
tc_id: TC-Info-025
title: Verify a Temporary Phone Reservation Is Released After Expiration
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
| Field        | Value     |
| ------------ | --------- |
| User A phone | 596145672 |
| User B phone | 512354681 |
| New phone    | 599999999 |

# Preconditions
-Temporary reservation exists and has a defined expiration period.
# Steps
1. User A requests an OTP for an available mobile number.
2.  Confirm that the number becomes temporarily reserved.
3.  Do not verify the OTP.
4.  Wait until the reservation expires.
5.  User B requests an OTP for the same number.
# Expected Result
- The expired reservation no longer blocks the number.
- User B can initiate verification if the number is still unregistered and other security limits allow it.
-  User A's expired reservation cannot be used to claim the number.
-  Neither account is updated merely because a reservation expired.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*