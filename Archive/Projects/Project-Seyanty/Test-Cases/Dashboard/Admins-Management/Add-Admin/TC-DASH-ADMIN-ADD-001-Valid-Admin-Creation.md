---
tc_id: TC-DASH-ADMIN-ADD-001
title: Valid Admin Creation
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
| Field         | Value             |
| ------------- | ----------------- |
| Name          | John Admin        |
| Phone         | +201012345678     |
| Email         | admin@example.com |
| Password      | ValidPass123      |
| Profile Photo | profile_photo.png |
| Status        | Active            |

# Preconditions
- User is an authorized dashboard administrator.
- User is accessing the Admins Management module.

# Steps
1. Navigate to the Admins Management module.
2. Select the option to add a new administrator.
3. Fill all required fields with valid values and provide a profile photo.
4. Submit the Add Administrator form.
5. Observe the system response.

# Expected Result
- All submitted information is validated successfully.
- The new administrator account is created with the provided data.
- A confirmation message is displayed indicating the administrator was created successfully.

# Notes
- Applies to AC-11 — Successful Creation.

# Attachments