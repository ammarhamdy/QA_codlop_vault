---
tc_id: TC-DASH-ADMIN-ADD-002
title: Required Fields
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
| Field        | Value   |
| ------------ | ------- |
| Name         | (empty) |
| Phone        | (empty) |
| Email        | (empty) |
| Password     | (empty) |
| Profile Photo| N/A     |

# Preconditions
- User is an authorized dashboard administrator.
- The Add Administrator form is displayed.

# Steps
1. Open the Add Administrator form.
2. Leave the name, phone number, email address, and password fields empty.
3. Submit the form.
4. Observe the system response.

# Expected Result
- The system validates all required fields before creating the account.
- The account is not created.
- Appropriate validation messages are displayed for each missing required field.

# Notes
- Applies to AC-02 — Required Administrator Information.

# Attachments