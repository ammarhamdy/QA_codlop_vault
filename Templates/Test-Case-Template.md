---
id: TC_AUTH_001
title: Verify successful login
module: Authentication
sub_module: Login
priority: High
severity: Critical
type: Positive
status: Ready
automation: No
automation_status: Pending
platform: Web
environment: Staging
created_by: Ammar
created_at: 2026-05-24
updated_at: 2026-05-24
tags:
  - testcase
  - auth
  - login
linked_requirement: REQ_AUTH_001
linked_bug:
sprint: Sprint-05
---

# Objective
Verify that user can login successfully.

# Preconditions
- User account exists
- User is active

# Test Data
| Field | Value |
|---|---|
| Email | test@example.com |
| Password | Password123 |

# Steps
1. Open login page
2. Enter valid email
3. Enter valid password
4. Click login

# Expected Result
User should login successfully and redirect to dashboard.

# Postconditions
User session created.

# Notes

# Attachments