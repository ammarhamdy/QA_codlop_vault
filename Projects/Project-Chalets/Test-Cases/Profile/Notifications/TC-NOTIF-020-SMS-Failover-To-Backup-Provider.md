---
tc_id: TC-NOTIF-020
title: Verify SMS Dispatch Automatically Fails Over to Secondary Provider on Gateway Failure
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
| Primary SMS Gateway | Gateway Alpha (Simulated Downtime / 500 error) |
| Backup SMS Gateway | Gateway Beta (Active / Healthy) |
| Target Mobile | `0503344112` |
| Event Type | Administrative Penalty Notification |

# Preconditions
1. System is configured with primary and secondary (backup) SMS providers.
2. Primary SMS gateway is temporarily simulated as unreachable or returning failure responses.

# Steps
1. Trigger an event requiring SMS delivery (e.g., penalty notice or login OTP) to `0503344112`.
2. Monitor system outbound notification routing logs.
3. Observe primary provider dispatch failure.
4. Verify secondary provider dispatch attempt.
5. Check target mobile handset for SMS reception.

# Expected Result
1. When the primary SMS provider fails, the system immediately routes the SMS dispatch request to the backup SMS provider.
2. The SMS message is successfully delivered to handset `0503344112` via the backup provider.
3. Outbound logs record the primary failure and successful secondary failover without losing the critical notification.

# Notes
- Requirement: UF-26 Alternative Flow A4 ("Primary SMS provider fails -> Sends through the backup provider").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
