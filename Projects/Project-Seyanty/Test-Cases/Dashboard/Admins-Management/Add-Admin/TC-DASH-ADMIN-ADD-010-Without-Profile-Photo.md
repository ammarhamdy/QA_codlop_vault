---
tc_id: TC-DASH-ADMIN-ADD-010
title: Without Profile Photo
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
| Field        | Value                   |
| ------------ | ----------------------- |
| Name         | John Admin              |
| Phone        | +201012345678           |
| Email        | admin@example.com       |
| Password     | ValidPass123            |
| Profile Photo| (not provided)          |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.
- All required information is valid except that the profile photo is not provided.

# Steps
1. Open the Add Administrator form.
2. Do not provide a profile photo.
3. Fill all other required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The system allows the administrator account to be created without a profile photo.
- The administrator account is created successfully.

# Notes
- Applies to AC-09 — Optional Profile Photo.

# Attachments