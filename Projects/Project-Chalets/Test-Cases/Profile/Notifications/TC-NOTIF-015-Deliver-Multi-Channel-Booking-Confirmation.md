---
tc_id: TC-NOTIF-015
title: Verify Multi-Channel Delivery of Booking Confirmation via Push, In-App, and SMS
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Event | Booking Confirmed |
| Customer Mobile | `0501122334` |
| Chalet Name | `منتجع النخيل` |
| Required Contents | Exact location coordinates/map link + Lessor contact phone |
| Channels Required | Push + In-App + SMS |

# Preconditions
1. Customer has submitted full payment or lessor has confirmed booking `BK-9001`.
2. Customer device is registered for push notifications.

# Steps
1. Trigger system booking confirmation for `BK-9001`.
2. Inspect delivery of push notification on the customer's mobile device within 60 seconds.
3. Open the in-app "Notifications" screen and inspect the newly created notification item.
4. Check SMS messages received on customer phone `0501122334`.
5. Verify the content of both the in-app notification and SMS message.

# Expected Result
1. Push notification arrives on device within 60 seconds of confirmation.
2. In-app notification is permanently stored with an active deep-link to booking details.
3. SMS message is delivered to `0501122334`.
4. Both SMS and in-app/push notifications include the exact property location and lessor direct contact telephone number.

# Notes
- Requirement: Channel Reference Table (Customer: "Push + in-app + SMS: Booking confirmation with exact location and lessor phone").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
