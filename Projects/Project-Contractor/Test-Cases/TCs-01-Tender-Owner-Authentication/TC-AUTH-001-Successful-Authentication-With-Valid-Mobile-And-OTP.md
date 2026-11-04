---
tc_id: TC-AUTH-001
title: Verify Successful Tender Owner Authentication with Valid Mobile Number and 4-Digit OTP
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `+966501234567` (or valid 10-digit mobile number) |
| Verification Code (OTP) | Valid 4-digit OTP (e.g., `4826`) |
| Destination Dashboard | Tender Owner Dashboard (`My Tenders`) |

# Preconditions
1. The Tender Owner authentication / login screen (`SCR-AUTH-01`) is accessible.
2. The Tender Owner possesses an active mobile number capable of receiving SMS messages.
3. SMS delivery service/gateway is operational and reachable.
4. The user is currently unauthenticated (no active session token present).

# Steps
1. Navigate to the Tender Owner Authentication / Login screen (`SCR-AUTH-01`).
2. Enter a valid mobile phone number (`+966501234567`) in the mobile number input field.
3. Verify that the mobile number format is validated and the "Send OTP" button becomes enabled.
4. Click the "Send OTP" button.
5. Verify that the system transitions to the OTP verification screen and displays an input countdown timer.
6. Retrieve the 4-digit OTP dispatched to the mobile phone via SMS.
7. Enter the received 4-digit OTP into the OTP input fields.
8. Submit or allow automatic submission upon entering the 4th digit.

# Expected Result
1. The system validates the entered 4-digit OTP against the associated mobile number.
2. Authentication succeeds and a secure session token is generated and stored in client storage.
3. The user is redirected to the Tender Owner dashboard ("My Tenders").
4. Access to Tender Owner management features is granted.

# Notes
- Aligns with UF-01 Main Flow (Steps 1 to 4), FR-01, and BR-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
