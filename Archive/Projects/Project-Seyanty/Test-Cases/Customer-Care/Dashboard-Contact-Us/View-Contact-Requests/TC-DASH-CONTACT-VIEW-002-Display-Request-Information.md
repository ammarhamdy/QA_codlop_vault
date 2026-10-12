---
tc_id: TC-DASH-CONTACT-VIEW-002
title: Display Request Information
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
| Field    | Value                  |
| -------- | ---------------------- |
| Request  | Request #1             |
| Name     | John Doe               |
| Email    | john.doe@example.com   |

# Preconditions
- User is an authorized dashboard user.
- Contact Us requests are available.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. View the requests list.
4. Observe the information displayed.

# Expected Result
- The system displays the relevant information associated with the Contact Us requests.

# Notes
- Applies to AC-02 — Display Request Information.

# Attachments