---
tc_id: TC-FAQ-005
title: Verify Admin Can Delete an FAQ and Confirm Deletion
priority: High
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - functional
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target FAQ | How long does delivery take? |

# Preconditions
- The administrator is logged into the admin dashboard.
- The target FAQ ("How long does delivery take?") exists in the system.
- The administrator is on the FAQ list management page.

# Steps
1. Scroll or search to locate the target FAQ in the list.
2. Click the "Delete" button/icon next to the target FAQ.
3. Verify that a confirmation modal/popup window is displayed with an appropriate prompt (e.g., "Are you sure you want to delete this FAQ?").
4. Click the "Confirm" or "Delete" button inside the modal.

# Expected Result
- A success notification (e.g., "FAQ deleted successfully") is displayed.
- The target FAQ is immediately removed from the admin panel list.
- The FAQ is deleted from the backend database.
- The FAQ is immediately removed from the client-facing FAQ section upon page reload.

# Notes
- Check database after deletion to ensure no orphaned FAQ rows exist.

# Attachments
