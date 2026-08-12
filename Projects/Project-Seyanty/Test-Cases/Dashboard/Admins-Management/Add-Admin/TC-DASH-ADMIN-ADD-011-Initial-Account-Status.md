---
tc_id: TC-DASH-ADMIN-ADD-011
title: Initial Account Status
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-001
tags:
  - test-case
---

# Test Data
| Field        | Value               |
| ------------ | ------------------- |
| Name         | John Admin          |
| Phone        | +201012345678       |
| Email        | admin@example.com   |
| Password     | ValidPass123        |
| Profile Photo| profile_photo.png   |
| Status       | (selected status)   |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Fill all required fields with valid values.
3. Select an initial account status.
4. Submit the form.
5. Observe the status of the newly created account.

# Expected Result
- The administrator account is created with the selected initial status.

# Notes
- Applies to AC-10 — Initial Account Status.

# Attachments