---
tc_id: TC-DASH-EMP-ADD-008
title: Valid Profile Photo
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                |
| ------------- | -------------------- |
| Name          | John Doe             |
| Phone         | +15550123            |
| Email         | john.doe@example.com |
| Password      | StrongPassword123    |
| Job Title     | Software Engineer    |
| Profile Photo | valid-profile.png    |

# Preconditions
- User is an authorized dashboard user.
- A valid profile photo file that satisfies the configured file rules is available.
- The Add Employee form is displayed.

# Steps
1. Upload a profile photo that satisfies the configured file rules.
2. Enter valid values in the remaining fields.
3. Submit the Add Employee form.
4. Observe the system response.

# Expected Result
- The system validates the uploaded photo according to the configured file rules.
- The photo is associated with the employee when valid.
- The employee record is created.

# Notes
- Applies to AC-06 — Profile Photo.

# Attachments