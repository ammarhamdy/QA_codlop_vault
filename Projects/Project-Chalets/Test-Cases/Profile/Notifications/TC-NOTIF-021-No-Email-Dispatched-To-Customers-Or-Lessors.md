---
tc_id: TC-NOTIF-021
title: Verify System Dispatches Zero Emails to Customers and Lessors
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Recipient Group | Permitted Channels | Email Permitted? |
| --------------- | ------------------ | ---------------- |
| Customer | In-App, Push, SMS | **NO (Prohibited)** |
| Lessor | In-App, Push, SMS | **NO (Prohibited)** |
| Internal Staff / Support Mailbox | Email / In-App | YES (Internal Only) |

# Preconditions
1. Customer and Lessor accounts are configured with standard profile details.
2. System processes various business events: booking confirmation, cancellation, dispute, rating, and account updates.

# Steps
1. Execute customer-facing and lessor-facing business transactions.
2. Monitor SMTP outbound email gateway logs.
3. Verify whether any outbound email messages are queued or sent to customer or lessor email addresses.
4. Trigger an internal staff alert (e.g., support ticket or critical system alert) and check outbound mail logs.

# Expected Result
1. No email is ever sent to or requested from customers or lessors for any user-facing notifications.
2. Customer and lessor notifications are confined exclusively to In-App, Push, and SMS.
3. Email delivery is strictly isolated to staff alerts and the central support mailbox.

# Notes
- Requirement: UF-26 Alternative Flow A5 ("Recipient is a customer -> No email is requested or sent. Email is for staff and the support mailbox only").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
