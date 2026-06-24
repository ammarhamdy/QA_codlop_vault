---
tc_id: TC-PAC-04
title: Immediate Access Unlock Upon Successful Purchase
priority: High
status: Ready
type: Functional
linked_requirement: REQ-001
tags:
  - test-case
  - purchase-access
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-003 |
| Purchase Status | Transition from Not Purchased to Purchased |

# Preconditions
- User is logged in as a Student.
- The Learning Program PROG-003 is currently NOT purchased.

# Steps
1. Navigate to the PROG-003 program summary/paywall page.
2. Complete the purchase process for PROG-003.
3. Verify the order status transitions to "Purchased" or "Ordered".
4. Attempt to access the first Unit and first Reading Section.

# Expected Result
- Immediately after the purchase is successful, the program content is unlocked.
- The user can now access the Units and the first Reading Section.

# Notes

# Attachments
