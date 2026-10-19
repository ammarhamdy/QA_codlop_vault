---
tc_id: TC-FAV-004
title: Verify Unauthenticated Visitor Tapping Heart Icon Is Redirected to Login Screen
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Session | Guest / Unauthenticated Visitor |
| Chalet Name | `منتجع النخيل` |
| Client Mobile Number | `0509988776` |
| OTP Code | `1234` |

# Preconditions
1. Mobile application is freshly launched or user is logged out (guest session).
2. Visitor is browsing search results or place details for `منتجع النخيل`.

# Steps
1. Tap the heart icon on the chalet card or details page while unauthenticated.
2. Observe destination screen and system navigation.
3. On the Login screen, enter valid mobile number `0509988776` and submit.
4. Complete OTP verification.
5. Observe destination screen and favorite status of `منتجع النخيل` post-login.

# Expected Result
1. Tapping the heart icon as a visitor immediately redirects to the Login/Authentication screen.
2. The place is NOT saved to favorites in guest session prior to authentication.
3. After successful authentication, user is returned to the place page/screen, and `منتجع النخيل` is successfully added to the user's persistent favorites list.

# Notes
- Requirement: UF-20 Notes ("Is login required to favorite? YES. What happens for a visitor who taps the heart? Navigate to login screen").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
