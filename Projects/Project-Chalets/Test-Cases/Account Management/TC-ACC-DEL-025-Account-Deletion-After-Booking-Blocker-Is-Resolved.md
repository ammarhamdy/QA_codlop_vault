---
tc_id: TC-ACC-DEL-025
title: Verify Account Deletion After Booking Blocker Is Resolved
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
| Field                   | Value         |
| ----------------------- | ------------- |
| user_phone              | +966509912345 |
| booking_reference       | BKG-TEST-001  |
| initial_booking_status  | held          |
| resolved_booking_status | cancelled     |
| otp_code                | ****          |

# Preconditions
- The user has an active account.
- The user has a booking in `held` status that blocks account deletion.
- The user has no other active bookings, pending payment requests, or open cancellation requests.
- The booking can be cancelled through the supported booking workflow.
# Steps
1. Log in to the mobile application.
2. Navigate to **My Account → Delete Account**.
3. Attempt to initiate account deletion.
4. Verify that the system blocks deletion because of the existing booking.
5. Cancel the booking through the supported booking cancellation workflow.
6. Verify that the booking status has changed to `cancelled` and that no open cancellation request remains.
7. Navigate back to **My Account → Delete Account**.
8. Review the deletion information and initiate the deletion request again.
9. Complete the OTP verification using a valid deletion OTP.
10. Confirm account deletion in the final red confirmation dialog.
# Expected Result
- The first deletion attempt is blocked because the booking is in `held` status & The system displays a message explaining the booking blocker.
- After the booking is successfully cancelled, the resolved booking no longer blocks account deletion.
- The user can proceed with the deletion workflow when no other blockers exist.
- Valid OTP verification and final confirmation are required.
- The account is successfully scheduled for deletion according to the configured grace period.
- An in-app notification is generated containing the scheduled deletion date and restoration instructions.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*