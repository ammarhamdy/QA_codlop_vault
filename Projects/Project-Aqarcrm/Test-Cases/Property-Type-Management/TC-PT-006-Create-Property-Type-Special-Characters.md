---
tc_id: TC-PT-006
title: Create Property Type with Special Characters in Name
priority: Medium
status: Ready
type: Functional
linked_requirement: FR-PT-002
tags:
  - test-case
  - create
  - validation
  - negative
---

# Test Data
| Field | Value |
|-------|-------|
| Name | <script>alert('xss')</script> |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- At least one Property Category exists.

# Steps
1. Navigate to Property Settings → Property Types.
2. Click "Add Property Type".
3. Enter `<script>alert('xss')</script>` in the Name field.
4. Select at least one Property Category.
5. Click "Save".
6. Observe the system response.
7. If saved, verify the Name is displayed correctly (sanitised) in the list.

# Expected Result
- The system shall either reject the input with a validation message (e.g., "Name contains invalid characters") or sanitise/escape the special characters and save successfully.
- If saved, the Name must not render executable HTML/JavaScript in the administration panel or public website.

# Notes
- This test validates input sanitisation and protection against XSS injection.
- TODO: Confirm the permitted character set for Property Type names.

# Attachments
