---
tc_id: TC-DASH-CONTACT-DELETE-004
title: Deleted Request
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
- A Contact Us request has been successfully deleted.

# Steps
1. Delete a Contact Us request.
2. View the Contact Us request list.
3. Observe the system response.

# Expected Result
- The deleted request is no longer available in the Contact Us request list.

# Notes
- Applies to AC-04 — Deleted Request.

# Attachments