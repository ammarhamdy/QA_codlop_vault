---
tc_id: TC-BKG-003
title: Verify Unauthenticated User Is Redirected to Login and Returned to Booking Screen
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Session | Unauthenticated / Guest |
| Chalet / Place | `شاليه الواحة` |
| Client Mobile Number | `0501234567` |
| OTP Verification Code | `1234` |

# Preconditions
1. Mobile application is installed and opened.
2. User is currently browsing as a guest (not logged in).
3. Chalet place details screen is open and displays an active "Book" (`حجز`) button.

# Steps
1. On the place details screen for `شاليه الواحة`, tap the **"Book"** (`حجز`) button.
2. Observe system redirection.
3. On the Login screen, enter valid mobile number `0501234567` and submit.
4. Enter valid OTP code `1234` and complete authentication.
5. Observe destination screen immediately following successful authentication.

# Expected Result
1. Tapping "Book" while unauthenticated redirects the user directly to the Login/Authentication flow.
2. After successful authentication, user is automatically returned to the booking screen of `شاليه الواحة` with contextual state preserved.
3. User does not have to re-navigate from the Home screen or re-search the chalet.

# Notes
- Requirement: UF-01 Alternative Flow A1 (Customer is not logged in).

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
