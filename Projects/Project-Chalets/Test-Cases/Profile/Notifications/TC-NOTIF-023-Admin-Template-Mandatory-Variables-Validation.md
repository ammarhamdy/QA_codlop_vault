---
tc_id: TC-NOTIF-023
title: Verify System Blocks Saving Notification Templates with Missing Mandatory Variables
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Template | Mandatory Variables | Valid Template Text | Invalid Template Text |
| -------- | ------------------- | ------------------- | --------------------- |
| Post-checkout Rating Invitation | `{المكان}` (Place Name) | `«كيف كانت إقامتك في {المكان}؟ قيّمها الآن»` | `«كيف كانت إقامتك؟ قيّمها الآن»` (Missing `{المكان}`) |
| Booking Confirmation | `{المكان}`, `{التاريخ}` | Full text with all variables | Missing `{المكان}` |

# Preconditions
1. Admin user is in Admin Dashboard -> Notification Settings -> "Message Templates" (`قوالب الرسائل`).
2. Template for "Rating Invitation" is open for editing.

# Steps
1. Edit the template text in Arabic.
2. Remove the mandatory variable `{المكان}` from the editor box.
3. Tap **"Save Template"** (`حفظ القالب`).
4. Observe system response and validation banner.
5. Re-insert `{المكان}` into the template string.
6. Tap **"Save Template"**.

# Expected Result
1. Attempting to save the template without mandatory variable `{المكان}` is blocked with a validation error (Error Flow E1).
2. The system specifies which mandatory variables are missing.
3. When all mandatory placeholders are restored, the template saves successfully.
4. Existing historical notifications already dispatched remain unaffected by template updates.

# Notes
- Requirement: UF-27 Main Flow Step 3, Error Flow E1, and Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
