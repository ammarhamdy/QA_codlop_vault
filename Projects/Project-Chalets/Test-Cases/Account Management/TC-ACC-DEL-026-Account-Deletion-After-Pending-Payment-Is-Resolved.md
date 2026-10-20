---
tc_id: TC-ACC-DEL-026
title: Verify Account Deletion After Pending Payment Is Resolved
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
| Field                   | Value                    |
| ----------------------- | ------------------------ |
| user_phone              | +966509912345            |
| payment_reference       | PAY-TEST-001             |
| initial_payment_status  | بانتظار الاعتماد         |
| resolved_payment_status | Final non-pending status |
| otp_code                | ****                     |

# Preconditions
-The user has an active account.
-The user has a payment request in `بانتظار الاعتماد` status.
-The payment request currently prevents account deletion.
-The user has no active bookings or open cancellation requests.
-The payment request can be resolved through the supported payment review workflow.
# Steps
1. Log in to the mobile application.
2. Navigate to **My Account → Delete Account**.
3. Attempt to initiate account deletion.
4. Verify that the system blocks deletion because of the pending payment request.
5. Resolve the payment request through the supported workflow.
6. Verify that the payment request is no longer in `بانتظار الاعتماد` status.
7. Navigate back to **My Account → Delete Account**.
8. Initiate account deletion again.
9. Complete the OTP verification using a valid deletion OTP.
10. Confirm deletion in the final red confirmation dialog.
# Expected Result
- The initial deletion attempt is blocked because the payment request is awaiting approval.
- The system displays the relevant payment blocker information, including the payment reference where applicable.
- Once the payment request reaches a final, non-blocking status, it no longer prevents deletion, The user can proceed with deletion if no other blockers exist..
- The system requires valid OTP verification and final confirmation& The account is scheduled for deletion according to the configured grace period. .
- The user receives an in-app notification containing the deletion date and restoration instructions.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*