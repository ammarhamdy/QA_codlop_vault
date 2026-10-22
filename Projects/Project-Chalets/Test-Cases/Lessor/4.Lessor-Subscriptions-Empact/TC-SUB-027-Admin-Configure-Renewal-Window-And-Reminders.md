---
tc_id: TC-SUB-027
title: Verify Admin Configuration of Early Renewal Window and Reminder Days
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Setting Field | Default Value | Updated Value | Validation Rules |
| ------------- | ------------- | ------------- | ---------------- |
| Early Renewal Window | 30 days | 45 days | Positive integer |
| Reminder Days List | `7, 3, 1` | `10, 5, 2, 1` | Comma-separated positive integers |
| Invalid Input | - | `abc`, `-10` | Disallowed / Blocked |

# Preconditions
1. Admin user is authenticated with subscription settings permissions.
2. Admin opens Admin Panel -> Subscription Settings (`إعدادات الاشتراكات`).

# Steps
1. View the default settings: early renewal window = 30 days, reminder days = 7, 3, 1.
2. Attempt to enter invalid non-numeric values (`abc`) into renewal window and attempt to save.
3. Observe validation response.
4. Enter updated valid values: early renewal window = 45 days, reminder days = `10, 5, 2, 1`.
5. Tap **Save** (`حفظ الإعدادات`).
6. Observe system confirmation.

# Expected Result
1. Non-numeric or negative inputs are rejected with validation errors (Error Flow E1).
2. Valid values are saved successfully.
3. The new settings take effect immediately for future early renewals and automated reminder schedules.

# Notes
- Requirement: UF-63 Main Flow Steps 1 to 4 & Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
