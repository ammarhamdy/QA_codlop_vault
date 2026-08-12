---
tc_id: TC-DASH-EMP-ADD-002
title: Required Fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
---

# Test Data
| Field                  | Value                      |
| ---------------------- | -------------------------- |
| One or more required field | (left empty in each run) |

# Preconditions
- User is an authorized dashboard user.
- The Add Employee form is displayed.

# Steps
1. Leave one field that the system requires left empty.
2. Enter valid values in the remaining fields.
3. Submit the Add Employee form.
4. Repeat for each field that the system requires.
5. Observe the system response.

# Expected Result
- The system rejects the creation request when a required value is missing.
- The system displays appropriate validation messages for the missing required value.
- No employee record is created.

# Notes
- Applies to AC-03 — Validate Employee Information.

# Attachments