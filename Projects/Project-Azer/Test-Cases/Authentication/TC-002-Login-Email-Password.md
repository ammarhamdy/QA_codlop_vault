---
tc_id: TC-002
title: Verify Client Login with Email and Password
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - login
---

# Test Data
| Field   | Value                  |
| ------- | ---------------------- |
| Email   | registered.user@example.com |
| Password | RegisteredP@ss1        |

# Preconditions
- A client account is already registered with email `registered.user@example.com` and password `RegisteredP@ss1`.
- User is on the website's login page.

# Steps
1. Navigate to the login page.
2. Enter the registered Email Address (e.g., `registered.user@example.com`).
3. Enter the correct Password (e.g., `RegisteredP@ss1`).
4. Click the "Login" or "Sign In" button.

# Expected Result
- The system should successfully authenticate the user.
- The user should be redirected to the authenticated area (e.g., dashboard, home page).
- The user's session should be active.

# Notes

# Attachments
