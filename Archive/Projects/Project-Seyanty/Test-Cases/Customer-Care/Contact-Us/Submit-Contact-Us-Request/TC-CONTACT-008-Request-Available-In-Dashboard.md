---
tc_id: TC-CONTACT-008
title: Request Available In Dashboard
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-CONTACT-001
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
- A Contact Us request has been successfully submitted on the public website.
- An authorized dashboard user account is available.

# Steps
1. Submit a valid Contact Us request on the public website.
2. Log in to the dashboard as an authorized user.
3. Open the Contact Us requests.
4. Observe the system response.

# Expected Result
- The submitted Contact Us request is available for viewing by the dashboard user.

# Notes
- Applies to AC-08 — Request Availability.

# Attachments