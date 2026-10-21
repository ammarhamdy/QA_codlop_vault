---
tc_id: TC-PAC-02
title: Access Denial for Unpurchased Program via Direct URL
priority: High
status: Ready
type: Functional
linked_requirement: REQ-001
tags:
  - test-case
  - purchase-access
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-002 |
| Purchase Status | Not Purchased |

# Preconditions
- User is logged in as a Student.
- The Learning Program PROG-002 has NOT been purchased by the user.

# Steps
1. Manually enter the direct URL to a Unit or Reading Section of PROG-002 in the browser address bar.
2. Press Enter.

# Expected Result
- Access to the page is denied.
- The user is redirected to the paywall or the program summary page.
- An appropriate access denial message is displayed.

# Notes

# Attachments
