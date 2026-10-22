---
tc_id: TC-PKG-030
title: Verify System Blocks Deletion of Packages That Have Subscribers
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Package Name | `باقة البداية القديمة` |
| Active Subscribers Count | 12 active lessors |
| Permitted Action | Archive (`أرشفة`) |
| Prohibited Action | Hard Delete (`حذف نهائي`) |

# Preconditions
1. Package `باقة البداية القديمة` has active subscribers (current lessors subscribed).
2. Admin opens package management in Admin Panel.

# Steps
1. Select package `باقة البداية القديمة`.
2. Attempt to trigger the **Delete** (`حذف`) action.
3. Observe system response and validation message.
4. Select the **Archive** (`أرشفة`) action.
5. Confirm archival.

# Expected Result
1. The system strictly prohibits deleting a package that has active subscribers.
2. The delete button is disabled or deletion is rejected with an integrity constraint message.
3. The package can be successfully archived. Archiving prevents new subscriptions while preserving service and history for existing subscribers.

# Notes
- Requirement: UF-48 Alternative Flow A1 ("Package has subscribers -> It can be archived, but not deleted").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
