---
tc_id: TC-DASH-CONTACT-VIEW-003
title: View Request Details
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
| Field   | Value                    |
| ------- | ------------------------ |
| Name    | John Doe                 |
| Email   | john.doe@example.com     |
| Phone   | +15550123                |
| Message | Hello, I need help.      |

# Preconditions
- User is an authorized dashboard user.
- A Contact Us request exists in the system.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. Select the Contact Us request.
4. Observe the system response.

# Expected Result
- The system displays the available details of the request, including the submitted name, email, phone number, and message.

# Notes
- Applies to AC-03 — View Request Details.

# Attachments