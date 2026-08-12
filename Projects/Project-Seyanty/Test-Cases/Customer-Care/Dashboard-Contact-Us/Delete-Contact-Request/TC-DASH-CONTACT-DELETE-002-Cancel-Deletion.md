---
tc_id: TC-DASH-CONTACT-DELETE-002
title: Cancel Deletion
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-CONTACT-003
tags:
  - test-case
run_result: pass
---

# Test Data
| Field   | Value                    |
| ------- | ------------------------ |
| Name    | John Doe                 |
| Email   | john.doe@example.com     |

# Preconditions
- User is an authorized dashboard user.
- The delete confirmation is displayed for an existing Contact Us request.

# Steps
1. Open the Customer Care module in the dashboard.
2. Select the delete action for a Contact Us request so the confirmation is displayed.
3. Cancel the deletion.
4. Observe the system response.

# Expected Result
- The system does not delete the Contact Us request.
- The request is preserved.

# Notes
- Applies to AC-02 — Cancel Deletion.

# Attachments