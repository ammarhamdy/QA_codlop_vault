---
tc_id: TC-DASH-ADMIN-EDIT-005
title: Duplicate Email
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field        | Value                          |
| ------------ | ------------------------------ |
| Name         | John Admin                     |
| Phone        | +201012345678                  |
| Email        | otheradmin@example.com (in use)|

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.
- The email address "otheradmin@example.com" is already associated with another administrator account.

# Steps
1. Open the selected administrator in the editable form.
2. Edit the email field with an email already associated with another administrator.
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system prevents the update.
- The system informs the user that the email cannot be used for another administrator account.

# Notes
- Applies to AC-04 — Update Email.

# Attachments