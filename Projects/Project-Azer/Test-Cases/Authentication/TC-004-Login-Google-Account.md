---
tc_id: TC-004
title: Verify Client Login with Google Account
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - oauth
  - google
---

# Test Data
| Field         | Value                 |
| ------------- | --------------------- |
| Google Account | valid.google@gmail.com |

# Preconditions
- User has an active Google account (`valid.google@gmail.com`).
- The website is configured for Google OAuth 2.0.
- User is on the website's login page.

# Steps
1. Navigate to the login page.
2. Click the "Sign in with Google" button.
3. If prompted, select or enter the Google account credentials.
4. Authorize the application if prompted by Google.

# Expected Result
- The system should successfully authenticate the user via Google.
- The user should be redirected to the authenticated area.
- The user's session should be active.

# Notes
- This test assumes the Google OAuth flow is external and successful.

# Attachments
