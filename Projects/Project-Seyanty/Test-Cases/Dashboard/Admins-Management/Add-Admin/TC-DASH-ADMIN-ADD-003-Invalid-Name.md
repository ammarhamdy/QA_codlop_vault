---
tc_id: TC-DASH-ADMIN-ADD-003
title: Invalid Name
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-001
tags:
  - test-case
---

# Test Data
| Field        | Value                     |
| ------------ | ------------------------- |
| Name         | (name invalid per rules)  |
| Phone        | +201012345678             |
| Email        | admin@example.com         |
| Password     | ValidPass123              |
| Profile Photo| profile_photo.png        |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Enter a name that does not satisfy the configured name business rules.
3. Fill the remaining required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The system validates the name according to the configured business rules.
- The account is not created.
- An appropriate validation message is displayed for the name field.

# Notes
- Applies to AC-03 — Administrator Name.

# Attachments