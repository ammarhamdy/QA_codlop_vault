---
tc_id: TC-NOTIF-005
title: Verify Notifications Center Displays Tabs by Role and Chronological Order
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
| Dual-Role Account | `0501122334` |
| Customer Tab Notifications | 3 items received at 10:00, 10:30, 11:00 |
| Lessor Tab Notifications | 2 items received at 09:00, 11:15 |
| Unread Count | Total new/unread notifications across tabs |

# Preconditions
1. User `0501122334` is registered as both Customer and Lessor.
2. Notifications exist for both Customer events (booking reminder) and Lessor events (new interested customer).
3. Several notifications remain unread.

# Steps
1. Tap the notification bell icon in the main navigation bar.
2. Observe the unread badge indicator on the bell icon.
3. Observe the layout and tabs on the "Notifications" (`الإشعارات`) screen.
4. Verify the sorting order of notifications under the Customer Mode tab.
5. Switch to the Lessor Mode tab.
6. Verify the sorting order of notifications under the Lessor Mode tab.

# Expected Result
1. The notification center provides two clear tabs: Customer Mode (`وضع العميل`) and Lessor Mode (`وضع المؤجر`).
2. Notifications within each tab are listed strictly sorted newest first (most recent at top).
3. The badge counter aggregates the count of all new unread notifications.
4. Unread items have distinct visual styling (e.g., subtle background highlight or unread dot).

# Notes
- Requirement: UF-24 Main Flow Step 1 & Notes ("List newest first, with an unread badge and two tabs: customer mode and lessor mode. Does the badge count both tabs together? Count new").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
