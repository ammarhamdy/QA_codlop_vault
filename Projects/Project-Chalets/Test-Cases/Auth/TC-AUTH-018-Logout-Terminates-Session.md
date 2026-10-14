---
tc_id: TC-AUTH-018
title: Verify Client Logout Terminates Active Session and Revokes Authenticated Access
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Active User | Authenticated Client (`0501111111`) |
| Action | Logout |

# Preconditions
1. Client is currently authenticated and has an active session in the mobile application.
2. Client is on the Profile / Settings screen where the "تسجيل الخروج" (Logout) option is available.

# Steps
1. Navigate to the Profile / Settings screen.
2. Tap "تسجيل الخروج" (Logout).
3. If a confirmation dialog appears, confirm logout.
4. Observe the redirection and user state.
5. Attempt to access authenticated client-specific features (e.g., viewing owner contact info, making a chalet booking, accessing client profile).

# Expected Result
1. The user's active session and authentication tokens are invalidated/cleared.
2. The user is transitioned back to the unauthenticated visitor (الزائر) state.
3. Public visitor browsing (viewing chalets, search, reviews) remains accessible.
4. Attempting to perform any client-only action prompts the user to log in or register.

# Notes
- Verifies function: `تسجيل الخروج: لا يوجد (الحقول) - تسجيل الدخول (القاعدة)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
