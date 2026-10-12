---
tc_id: TC-DASH-ADMIN-ADD-008
title: Valid Profile Photo
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field        | Value               |
| ------------ | ------------------- |
| Name         | John Admin          |
| Phone        | +201012345678       |
| Email        | admin@example.com   |
| Password     | ValidPass123        |
| Profile Photo| valid_profile.png   |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Provide a profile photo that satisfies the configured file requirements.
3. Fill the remaining required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The uploaded file is validated according to the configured file requirements.
- The profile photo is associated with the administrator account.
- The administrator account is created successfully.

# Notes
- Applies to AC-08 — Profile Photo.

# Attachments