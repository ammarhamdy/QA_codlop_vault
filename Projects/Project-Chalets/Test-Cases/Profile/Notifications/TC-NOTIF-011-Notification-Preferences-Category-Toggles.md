---
tc_id: TC-NOTIF-011
title: Verify Setting Notification Preferences and Category Toggles
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Configurable Categories | Default State | Test Action |
| ----------------------- | ------------- | ----------- |
| Interested Customers (`المهتمون الجدد`) | Enabled (ON) | Toggle OFF |
| Account and Subscription (`الحساب والاشتراك`) | Enabled (ON) | Keep ON |
| Ads (`الإعلانات`) | Enabled (ON) | Toggle OFF |
| Ratings (`التقييمات`) | Enabled (ON) | Toggle OFF |

# Preconditions
1. User is logged in with active push notification permissions enabled on the device.
2. User navigates to Settings -> "Notification Preferences" (`تفضيلات الإشعارات`).

# Steps
1. Verify the 4 category toggles listed on the screen:
   - Interested customers
   - Account and subscription
   - Ads
   - Ratings
2. Switch "Interested customers" to OFF.
3. Switch "Ads" to OFF.
4. Switch "Ratings" to OFF.
5. Exit the Settings screen.
6. Trigger an event under "Ratings" (e.g., someone rates user's property).
7. Trigger an event under "Account and subscription" (e.g., subscription renewal reminder).

# Expected Result
1. Category toggle states persist immediately upon selection without requiring a manual save button.
2. For disabled categories (Ratings, Ads, Interested customers): push notifications are suppressed on the user's device.
3. For enabled category (Account and subscription): push notifications are delivered normally.
4. In all cases, the in-app notification copy is preserved and saved in the notifications list.

# Notes
- Requirement: UF-25 Main Flow Steps 1 to 3 & Alternative Flow A1.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
