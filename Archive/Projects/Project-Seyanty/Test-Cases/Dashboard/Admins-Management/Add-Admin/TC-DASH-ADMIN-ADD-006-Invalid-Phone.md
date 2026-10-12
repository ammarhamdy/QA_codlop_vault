---
tc_id: TC-DASH-ADMIN-ADD-006
title: Invalid Phone
priority:
  - High
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
| Field        | Value                     |
| ------------ | ------------------------- |
| Name         | John Admin                |
| Phone        | (phone invalid per rules) |
| Email        | admin@example.com         |
| Password     | ValidPass123              |
| Profile Photo| profile_photo.png         |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Enter a phone number that does not satisfy the configured phone business rules.
3. Fill the remaining required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The system validates the phone number according to the configured business rules.
- The account is not created.
- An appropriate validation message is displayed for the phone number field.

# Notes
- Applies to AC-06 — Administrator Phone.

# Attachments