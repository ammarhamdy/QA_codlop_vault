---
tc_id: TC-DASH-ADMIN-ADD-007
title: Invalid Password
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
| Field        | Value                    |
| ------------ | ------------------------ |
| Name         | John Admin               |
| Phone        | +201012345678            |
| Email        | admin@example.com        |
| Password     | (fails password policy)  |
| Profile Photo| profile_photo.png        |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Enter a password that does not satisfy the configured password policy.
3. Fill the remaining required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The system validates the password according to the configured password policy.
- The account is not created.
- An appropriate validation message is displayed for the password field.
- The password is not stored or displayed as plain text.

# Notes
- Applies to AC-07 — Password.

# Attachments