---
tc_id: TC-Broker-Req-009
title: Verify National Address and Tax Number fields
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004-Broker-Join-Request
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User opens Join as a Broker form.
# Steps
1. Leave the **National Address** and **Tax Number** fields empty and submit the form with valid required fields.  
2. Enter valid values in both fields.  
3. Enter values exceeding the allowed length or invalid values and submit the form.
# Expected Result
-The request is submitted successfully when the optional fields are left empty. Valid values are accepted, and invalid or overlength values follow the defined validation rules.
# Notes

# Attachments
