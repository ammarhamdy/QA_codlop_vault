---
tc_id: TC-DASH-EMP-ADD-009
title: Invalid Profile Photo
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
| Field         | Value                          |
| ------------- | ------------------------------ |
| Name          | John Doe                       |
| Phone         | +15550123                      |
| Email         | john.doe@example.com           |
| Password      | StrongPassword123              |
| Job Title     | Software Engineer              |
| Profile Photo | invalid-profile.png            |

# Preconditions
- User is an authorized dashboard user.
- A profile photo file that violates the configured file rules is available.
- The Add Employee form is displayed.

# Steps
1. Upload a profile photo that does not satisfy the configured file rules.
2. Enter valid values in the remaining fields.
3. Submit the Add Employee form.
4. Observe the system response.

# Expected Result
- The system rejects the photo according to the configured file rules.
- The system displays an appropriate validation message for the photo.
- The photo is not associated with the employee.

# Notes
- Applies to AC-06 — Profile Photo and AC-03 — Validate Employee Information.

# Attachments