---
tc_id: TC-ACC-DEL-013
title: Host Account Deletion with Active Subscription and Published Listings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field                    | Value         |
| ------------------------ | ------------- |
| user_phone               | +966509012345 |
| host_status              | active        |
| subscription_expiry      | 2026-11-30    |
| published_listings_count | 2             |
| otp_code                 | ****          |

# Preconditions
-User is an active host with an active package subscription expiring on `2026-11-30`.
-Host has 2 active published chalet listings.
-Host has no active bookings on their listings and no pending payment requests.
-Host is logged in to the mobile application in host mode or customer mode.

# Steps
1. Navigate to "حسابي" (My Account) > "حذف الحساب" (Delete Account).
2. Review the blocker check (confirming no active bookings or pending payment requests).
3. Observe the warning dialog regarding the active subscription.
4. Verify the exact subscription forfeiture text:
   "لديك اشتراك ساري حتى 2026-11-30. سيُلغى بحذف الحساب دون استرداد، وتُعطل كل إعلاناتك نهائيًا" with options [حذف الحساب] and [تراجع].
5. Tap [حذف الحساب].
6. Observe the confirmation dialog showing the number of published listings (`2` listings) to be disabled immediately.
7. Enter the 4-digit OTP received via SMS.
8. Confirm via the final red confirmation dialog.
9. Inspect the database status of the user, listings, and subscription.

# Expected Result
- The application displays clear warnings that subscription fees are non-refundable and all published listings will be disabled immediately.
- User account status changes to `pending_deletion`.
- All published listings belonging to the host are disabled immediately (`status = 'disabled'`).
- Disabled listings no longer appear in public search results, banners, or the home page.
- The host profile is marked for archival, and host leads records show "مستخدم محذوف" without phone numbers.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-20 12:44*
