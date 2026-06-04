---
tc_id: TC-008
title: Verify Logout and Session Termination
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - session
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- A client is successfully logged into the website.

# Steps
1. Log into the website using valid credentials.
2. Navigate to a page that displays the "Logout" option (e.g., profile menu, header).
3. Click the "Logout" button/link.
4. Attempt to navigate back to a restricted (authenticated) page using the browser's back button or direct URL access.

# Expected Result
- The user should be redirected to the login page or a public home page after logging out.
- The user's session should be terminated (e.g., session cookies cleared).
- The user should not be able to access restricted pages without re-authenticating.

# Notes
- Verify session cookies and local storage items are cleared upon logout.

# Attachments
