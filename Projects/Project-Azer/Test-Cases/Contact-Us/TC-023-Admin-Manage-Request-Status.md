---
tc_id: TC-023
title: Verify Administrator Can Manage Request Status
priority: High
status: Ready
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - admin
  - contact-us
  - status-management
run_result: Fail
---

# Test Data
| Field                     | Value                           |
| ------------------------- | ------------------------------- |
| Administrator Credentials | admin@example.com / adminpass   |
| Initial Request Status    | New                             |
| Target Statuses           | In Progress, Resolved, Archived |

# Preconditions
- An administrator is logged into the admin panel and is viewing a client request (e.g., one submitted via TC-014).

# Steps
1. Log in to the administrator panel and navigate to a specific client request.
2. Verify the initial status of the request (e.g., 'New').
3. Locate the option to change the request status.
4. Change the status to 'In Progress'. Verify the status updates in the UI and is saved.
5. Change the status to 'Resolved'. Verify the status updates and is saved.
6. Change the status to 'Archived'. Verify the status updates and is saved.
7. Verify that status changes are recorded in an audit trail or history for the request.

# Expected Result
- The administrator should be able to update the status of a client request.
- The updated status should be immediately reflected in the admin interface.
- All status changes should be persistently stored and auditable.

# Notes
- Ensure proper permissions are in place for status updates.

# Attachments
