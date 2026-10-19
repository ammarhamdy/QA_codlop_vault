---
tc_id: TC-NOTIF-018
title: Verify Critical Financial and Administrative Events Dispatch SMS to Lessor
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Event Scenario | Event Description | Channels Required |
| -------------- | ----------------- | ----------------- |
| Scenario A | Change to Lessor IBAN / Bank Account details | Push + In-App + **SMS** |
| Scenario B | Account Statement request generated | Push + In-App + **SMS** |
| Scenario C | Refund Due-Date Reminder | Push + In-App + **SMS** |
| Scenario D | Penalty applied to Lessor | Push + In-App + **SMS** |

# Preconditions
1. Lessor is registered with verified mobile number `0559988776`.
2. Lessor has an active chalet listing and subscription.

# Steps
1. In Lessor portal, submit a change to bank account IBAN (Scenario A).
2. Request an official account statement (Scenario B).
3. Trigger a pending refund due-date milestone (Scenario C).
4. Apply an administrative penalty to the lessor account (Scenario D).
5. For each scenario, check SMS delivery to `0559988776` alongside push and in-app feeds.

# Expected Result
1. Every critical event (bank changes, statement requests, refund deadlines, and penalties) triggers a mandatory SMS to the lessor's mobile number.
2. The SMS alert delivers immediately with event specifics and security advisory warnings.
3. In-app and push notifications are also delivered concurrently.

# Notes
- Requirement: Channel Reference Table (Lessor: "+ SMS: Any change to bank accounts. Statement request. Refund due-date reminder. Penalty").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
