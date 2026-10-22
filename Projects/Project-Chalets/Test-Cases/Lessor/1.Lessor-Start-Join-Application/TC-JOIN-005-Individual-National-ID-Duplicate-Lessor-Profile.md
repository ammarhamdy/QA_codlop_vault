---
tc_id: TC-JOIN-005
title: Verify System Blocks National ID Already Linked to Another Active Lessor Profile
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Duplicate National ID | `1023456789` (Already registered to existing Lessor Account A) |
| Applicant Account | Customer Account B |
| Expected Error Message | `«هذا الرقم مسجل لحساب آخر. تواصل معنا إن كان ذلك خطأ»` |

# Preconditions
1. Existing lessor Account A is registered and active with National ID `1023456789`.
2. A separate customer Account B initiates a new join application.

# Steps
1. As Account B, choose **Individual** scope.
2. Enter National ID `1023456789`.
3. Complete remaining fields and submit or trigger field validation.
4. Observe the system response.
5. In Admin security logs, inspect audit entries for duplicate registration attempts.

# Expected Result
1. The system blocks the application from proceeding with a duplicate National ID.
2. The user sees the message: `«هذا الرقم مسجل لحساب آخر. تواصل معنا إن كان ذلك خطأ»`.
3. The incident is logged in the backend audit trail for compliance and fraud prevention review.

# Notes
- Requirement: UF-28 Error Flow E3.
- Enforces strict one-lessor-per-National-ID policy.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
