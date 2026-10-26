---
tc_id: TC-ACPT-013
title: Confirm Booking - Multi-Channel Notifications Dispatched to Customer
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Channel | Expected Delivery | Content Summary |
| ------- | ----------------- | --------------- |
| Instant Push Notification | Delivered immediately to customer mobile device | Booking confirmed alert |
| In-App Notification | Stored in customer's in-app notification center | Booking confirmed notification with deep link |
| SMS Text Message | Sent to customer's registered phone number | Formal SMS confirmation of booking completion |

# Preconditions
1. Customer has submitted receipt and has push notifications and SMS capabilities enabled.
2. Lessor opens the pending booking and confirms payment received.

# Steps
1. Tap **"Confirm"** in the lessor confirmation dialog.
2. Check customer device lock screen for instant push notification.
3. Open the customer application and inspect the in-app notification center.
4. Check the customer's phone SMS inbox.

# Expected Result
1. All three notification channels are triggered simultaneously upon confirmation:
   - Instant push notification arrives without delay.
   - In-app notification is posted.
   - Confirmation SMS is delivered.
2. Tapping any notification directs the customer to the confirmed booking screen.

# Notes
- Requirement: UF-04 (Main Flow Step 5).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
