---
tc_id: TC-NEWS-012
title: Verify XSS Protection in News Title and Content
priority: High
status: Ready
type: Security
linked_requirement: 
tags:
  - test-case
  - news-admin
  - security
  - xss
---

# Test Data
| Field | Value |
| ----- | ----- |
| XSS Title | <script>alert('XSS-Title')</script>News |
| XSS Content | <p>Test</p><img src=x onerror=alert('XSS-Content')> |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page.

# Steps
1. Enter the XSS Title payload into the title field.
2. Enter the XSS Content payload into the content field.
3. Click "Save".
4. View the news item in the admin list and on the public news detail page.

# Expected Result
- The application escapes or sanitizes the HTML tags upon saving or rendering.
- No JavaScript alert boxes appear in the browser.
- The payload is rendered as literal text (e.g., seeing the tags as text) or is completely stripped.

# Notes
- Crucial for preventing stored XSS attacks.

# Attachments
