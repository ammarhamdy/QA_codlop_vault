---
tc_id: TC-FAQ-006
title: Verify Admin Can Cancel the FAQ Deletion Flow
priority: Medium
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
- The target FAQ exists in the list.

# Steps
1. Click the "Delete" button/icon next to the target FAQ.
2. Verify that the confirmation modal is displayed (e.g., "Are you sure you want to delete this FAQ?").
3. Click the "Cancel" button or click the "X" button to close the modal.
4. Verify the status of the target FAQ in the list.

# Expected Result
- The confirmation modal is closed.
- The target FAQ remains visible in the admin FAQ list and is not deleted.
- The FAQ remains fully queryable in the backend database.
- The FAQ remains fully visible on the public client-facing FAQ page.

# Notes
- Verify that clicking outside the modal backdrop also safely cancels/closes the modal.

# Attachments
