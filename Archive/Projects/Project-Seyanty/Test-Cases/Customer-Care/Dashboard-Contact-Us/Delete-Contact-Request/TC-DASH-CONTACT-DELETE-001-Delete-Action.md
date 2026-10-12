---
tc_id: TC-DASH-CONTACT-DELETE-001
title: Delete Action
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
- A Contact Us request exists and is viewable.

# Steps
1. Open the Customer Care module in the dashboard.
2. View an existing Contact Us request.
3. Select the delete action.
4. Observe the system response.

# Expected Result
- The system requests confirmation before deleting the request.

# Notes
- Applies to AC-01 — Delete Action.

# Attachments