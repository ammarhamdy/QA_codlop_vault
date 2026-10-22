---
tc_id: TC-SUB-028
title: Verify System Allows Empty Reminder Days List to Disable Automated Reminders
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Setting Value |
| ----- | ------------- |
| Reminder Days List | `""` (Empty string / None) |
| Early Renewal Window | 30 days |

# Preconditions
1. Admin user is in Admin Panel -> Subscription Settings.

# Steps
1. Clear the "Reminder Days" input field completely, leaving it blank.
2. Tap **Save** (`حفظ الإعدادات`).
3. Verify whether the empty reminder list is accepted.
4. Advance time for an active subscription nearing expiry (e.g., 7 days, 3 days, 1 day).
5. Check whether any automated push or in-app expiry reminders are generated.

# Expected Result
1. The system permits saving an empty reminder days list without throwing validation errors.
2. When the list is empty, automated expiry reminder notifications are completely disabled and not queued.
3. The dashboard card behavior at expiry continues to operate as specified.

# Notes
- Requirement: UF-63 Notes (Closed question: "Can the reminder list be empty? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
