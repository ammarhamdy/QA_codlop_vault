---
tc_id: TC-NOTIF-017
title: Verify Channel Routing for Dispute Lifecycle Events
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Dispute Event | Expected Channels |
| ------------- | ----------------- |
| Dispute Opened Against User | Push + In-App |
| Dispute Decision Rendered | Push + In-App |
| Refund Recorded / Appeal Filed | Push + In-App |
| Dispute Formally Closed | **In-App Only** |

# Preconditions
1. Customer has an active booking with an initiated dispute `DSP-501`.
2. Customer device has active push notification permissions.

# Steps
1. Trigger event: Support Admin renders decision on dispute `DSP-501`.
2. Verify channels received on customer device.
3. Trigger event: Dispute `DSP-501` is formally closed.
4. Check if a push notification is delivered for dispute closure.
5. Open in-app "Notifications" screen and check for dispute closure item.

# Expected Result
1. Active dispute updates (opened, decision, refund, appeal) arrive via both Push and In-App notification channels.
2. When the dispute is officially closed, NO push notification is sent; the closure notice is delivered strictly as **In-App Only**.
3. In-app notification center reliably displays the dispute closure notice with link to historical record.

# Notes
- Requirement: Channel Reference Table (Customer: "Push + in-app: Dispute events ... Dispute closure is in-app only").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
