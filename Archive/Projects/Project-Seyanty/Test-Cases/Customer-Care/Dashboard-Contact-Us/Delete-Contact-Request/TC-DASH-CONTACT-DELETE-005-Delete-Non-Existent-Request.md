---
tc_id: TC-DASH-CONTACT-DELETE-005
title: Delete Non-Existent Request
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-CONTACT-003
tags:
  - test-case
run_result: fail
---

# Test Data
| Field   | Value                        |
| ------- | ---------------------------- |
| Request ID | <ID of a non-existent request> |

# Preconditions
- User is an authorized dashboard user.
- The selected Contact Us request does not exist in the system.

# Steps
1. Access the delete action for a Contact Us request that does not exist.
2. Attempt to delete the request.
3. Observe the system response.

# Expected Result
- The system rejects the deletion operation.
- The system displays an appropriate message indicating the request does not exist.

# Notes
- Applies to AC-05 — Non-Existent Request.

# Attachments