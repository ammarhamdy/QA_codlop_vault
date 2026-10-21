---
tc_id: TC-PAC-03
title: Access Denial for Unpurchased Program via UI Navigation
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
1. Navigate to the program catalog.
2. Attempt to click on "Enter Program" or access any internal link for PROG-002.

# Expected Result
- The user is prevented from entering the program content.
- The user is redirected to the paywall or program summary page.

# Notes

# Attachments
