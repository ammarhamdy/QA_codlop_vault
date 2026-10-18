---
tc_id: TC-BKG-023
title: Verify Multi-Channel Notification Dispatched to Customer Upon Booking Confirmation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000503` |
| Customer Mobile | `0509876543` |
| Notification Channels | 1. Instant Push Notification<br>2. In-App Notification Center<br>3. SMS Gateway |

# Preconditions
1. Customer has an active booking (`BKG-2026-000503`) in "Awaiting Lessor Confirmation" status.
2. Customer device is registered with active push notification tokens and valid mobile number `0509876543`.
3. Lessor is logged in and views the booking.

# Steps
1. As the Lessor, tap **"Confirm"** (`تأكيد`) on booking `BKG-2026-000503`.
2. Inspect the customer device notifications tray.
3. Open the customer application and inspect the Notification Center.
4. Check the customer device SMS inbox for an SMS message from the platform.

# Expected Result
1. The customer receives an instant push notification confirming that the booking has been confirmed by the lessor.
2. An in-app notification is recorded in the customer's notification list with full booking details and timestamp.
3. An SMS notification confirming the booking is delivered to the customer's mobile number (`0509876543`).
4. All three notification channels trigger without failure.

# Notes
- Requirement: UF-04 Step 5 ("Sends the customer an instant push, an in-app notification, and an SMS confirming the booking").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
