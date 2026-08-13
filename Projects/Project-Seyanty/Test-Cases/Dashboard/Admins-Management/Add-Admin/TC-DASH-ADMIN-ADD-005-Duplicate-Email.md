---
tc_id: TC-DASH-ADMIN-ADD-005
title: Duplicate Email
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
| Phone        | +201012345678             |
| Email        | existing@example.com      |
| Password     | ValidPass123              |
| Profile Photo| profile_photo.png         |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account already uses the email address "existing@example.com".
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Enter an email address already used by an existing administrator.
3. Fill the remaining required fields with valid values.
4. Submit the form.
5. Observe the system response.

# Expected Result
- The system rejects the request.
- The system informs the user that the email cannot be used for another administrator account.
- No new administrator account is created.

# Notes
- Applies to AC-05 — Duplicate Email.

# Attachments