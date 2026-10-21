---
tc_id: TC-014
title: Verify prevention of duplicate form submission
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Administrators Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin
2. fill valid data in all Fields
3. Click the **Add** button multiple times quickly (double click / rapid clicks).
4. Observe system behavior.

# Expected Result
The system should process only one form submission & Only one admin record is created
# Notes

# Attachments
