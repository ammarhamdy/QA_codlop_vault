---
tc_id: TC-AUTH-001
title: Verify Client Registration Requires Name Only (Deferred Profile Fields)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field                     | Value                                                                                    |
| ------------------------- | ---------------------------------------------------------------------------------------- |
| Mobile Number             | `0501111111`                                                                             |
| User Name / Full Name     | `سالم أحمد العتيبي`                                                                      |
| Verification Code (OTP)   | Valid 4-digit/6-digit SMS OTP                                                            |
| Additional Profile Fields | National ID, ID Photo, Activity Name (Not on registration page; filled via Profile page) |

# Preconditions
1. Mobile app is installed and launched on the test device.
2. User is on the Client Registration screen.
3. Mobile number (`0501111111`) is not registered in any active account.
4. SMS provider is active and able to deliver verification codes.

# Steps
1. Navigate to the Registration screen in the mobile application.
2. Verify the registration form fields: confirm that only Mobile Number and User Name are requested, and that National ID, ID Photo, and Activity Name are not present on this screen.
3. Enter valid Mobile Number (`0501111111`).
4. Enter User Name (`سالم أحمد العتيبي`).
5. Tap the "Register" / "Submit" button.
6. On the OTP verification screen, enter the verification code received via SMS.
7. Confirm the submission.

# Expected Result
1. The registration flow requires only the user name (along with the mobile number for authentication).
2. The verification code is accepted and client account is created with status "نشط" (Active).
3. The client is authenticated and redirected to the home screen.
4. Remaining profile details (National ID, ID Photo, Business Name) can be filled subsequently from the Profile page.

# Notes
- Clarification: The registration process requires only the user name and mobile number. Profile fields (National ID, ID Photo, Activity Name) are not requested during registration and are deferred to the Profile page.

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:12*
