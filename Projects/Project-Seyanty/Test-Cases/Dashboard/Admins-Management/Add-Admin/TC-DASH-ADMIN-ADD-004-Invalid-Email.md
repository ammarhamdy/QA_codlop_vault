---
tc_id: TC-DASH-ADMIN-ADD-004
title: Invalid Email
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
| Field        | Value               |
| ------------ | ------------------- |
| Name         | John Admin          |
| Phone        | +201012345678       |
| Email        | invalid-email       |
| Password     | ValidPass123        |
| Profile Photo| profile_photo.png   |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Enter an email address with an invalid format.
3. Fill the remaining required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The system validates the email format.
- The account creation is prevented because the email format is invalid.
- An appropriate validation message is displayed.

# Notes
- Applies to AC-04 — Administrator Email.

# Attachments