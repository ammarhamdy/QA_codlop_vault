---
tc_id: TC-RAT-001
title: Verify System Dispatches Rating Invitation Notification After Check-out
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Mobile | `0501122334` |
| Booking ID | `BK-7701` |
| Chalet Name | `منتجع النخيل` |
| Booking Status | `Completed` (Check-out time passed) |
| Notification Text | `«كيف كانت إقامتك في منتجع النخيل؟ قيّمها الآن»` |

# Preconditions
1. Customer has a confirmed booking `BK-7701` for `منتجع النخيل`.
2. The scheduled check-out time has arrived and passed (booking transitions to `Completed`).
3. No rating has been submitted for this booking.

# Steps
1. Wait for system background worker to process post-checkout rating triggers (within 15 minutes of checkout).
2. Check customer's device push notifications and in-app notification center.
3. Tap on the received rating invitation notification.

# Expected Result
1. The system delivers the rating invitation notification within 15 minutes after check-out time passes.
2. The notification text reads: `«كيف كانت إقامتك في منتجع النخيل؟ قيّمها الآن»`.
3. Tapping the notification opens the mobile app and navigates directly to the rating submission form for booking `BK-7701`.

# Notes
- Requirement: UF-14 Main Flow Step 1.
- Trigger depends on booking moving to `Completed` status at check-out.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
