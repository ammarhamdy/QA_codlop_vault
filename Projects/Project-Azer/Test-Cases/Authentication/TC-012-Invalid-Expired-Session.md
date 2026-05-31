---
tc_id: TC-012
title: Verify Handling of Invalid or Expired Session Tokens
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - security
  - session
---

# Test Data
| Field          | Value          |
| -------------- | -------------- |
| Session Token | Invalid/Expired Token |

# Preconditions
- A client is logged into the website, and a session token is issued.
- The user can access browser developer tools to modify session tokens.

# Steps
1. Log into the website using valid credentials.
2. Access a restricted page to confirm active session.
3. (Manually or via script) Modify the active session token (e.g., in cookies or local storage) to an invalid or intentionally expired value.
4. Attempt to refresh the page or navigate to another restricted page.

# Expected Result
- The system should detect the invalid/expired session token.
- The user should be automatically logged out and redirected to the login page.
- An appropriate message indicating session expiration or invalidity might be displayed.
- The user should not be able to access restricted resources.

# Notes
- This test often requires manual intervention or a specialized browser automation tool to manipulate session tokens.
- Ensure the system invalidates tokens properly on the backend.

# Attachments
