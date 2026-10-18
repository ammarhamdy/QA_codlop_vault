---
tc_id: TC-BKG-078
title: Verify Multi-Channel Penalty Notice Dispatched to Lessor and Starts 3-Business-Day Appeal Window
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor ID | `LESSOR-3017` |
| Applied Step | `Step 2: Ad Suspension` |
| Penalty Reference | `PEN-2026-000101` |
| Notice Channels | 1. Instant Push<br>2. In-App Notification Center<br>3. SMS |
| Appeal Window | `3 Business Days` from receipt of notice |

# Preconditions
1. Support applies a penalty to `LESSOR-3017` on Monday `2026-10-19 09:00:00`.
2. Lessor's device is registered for push notifications and mobile SMS delivery.

# Steps
1. Apply penalty in Support console at `09:00:00`.
2. Check incoming push notification on lessor device.
3. Check in-app notification center in lessor app.
4. Check SMS inbox on lessor mobile device.
5. Verify contents of the notification across all three channels.
6. Open the in-app penalty notification.
7. Verify the start time and countdown of the 3-business-day appeal window.

# Expected Result
1. The lessor receives notifications via all 3 channels: instant push, in-app notification, and SMS.
2. The notification explicitly includes: the penalty step applied, justification reason, reference identifier (`PEN-2026-00101`), and notification of the right to appeal.
3. The 3-business-day appeal window begins precisely from the arrival timestamp of the notice (not from the back-office drafting timestamp).
4. The notification contains a direct link/button to initiate the appeal.

# Notes
- Requirement: UF-11 Steps 4–5 and UF-12 Notes ("Notifies the lessor by instant push, in-app, and SMS with the step, reason, reference, and right to appeal. Starts the 3-business-day appeal window from the notice").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
