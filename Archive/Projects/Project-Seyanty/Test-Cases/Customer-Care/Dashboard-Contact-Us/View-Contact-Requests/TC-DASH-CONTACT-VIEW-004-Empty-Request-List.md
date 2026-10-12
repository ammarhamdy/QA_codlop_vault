---
tc_id: TC-DASH-CONTACT-VIEW-004
title: Empty Request List
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-CONTACT-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- User is an authorized dashboard user.
- No Contact Us requests exist in the system.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. Observe the system response.

# Expected Result
- The system displays an appropriate empty-state message.

# Notes
- Applies to AC-04 — Empty Request List.

# Attachments