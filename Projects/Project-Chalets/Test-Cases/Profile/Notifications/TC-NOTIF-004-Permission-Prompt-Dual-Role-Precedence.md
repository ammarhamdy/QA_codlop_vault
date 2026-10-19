---
tc_id: TC-NOTIF-004
title: Verify Dual-Role User Prioritizes Lessor Prompt Copy on Meaningful Action
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Profile | Registered Customer who also activates Lessor Mode |
| Expected Prompt Copy | `«نبلغك فورًا عند وصول مهتم جديد وقبل انتهاء اشتراكك»` |

# Preconditions
1. User account possesses both Customer and Lessor profiles.
2. Device push notification permission has not yet been requested or determined.

# Steps
1. Log in to the application with the dual-role account.
2. Activate Lessor Mode (`التبديل إلى وضع المؤجر`) or perform a lessor action (e.g., manage ad / properties).
3. Observe the displayed permission prompt copy.

# Expected Result
1. The permission prompt displays the Lessor-specific explanation: `«نبلغك فورًا عند وصول مهتم جديد وقبل انتهاء اشتراكك»`.
2. When the user has both modes, the Lessor role and its associated critical business triggers take precedence.

# Notes
- Requirement: UF-23 Notes (Closed question: "Which action counts as the 'first' if the user is both a customer and a lessor? Lessor").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
