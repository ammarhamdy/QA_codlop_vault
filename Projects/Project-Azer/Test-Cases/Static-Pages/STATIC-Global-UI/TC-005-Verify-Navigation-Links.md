---
tc_id: TC-GUI-002
title: Verify Navigation Links Functionality
priority: High
status:
  - Ready
type: Functional
tags:
  - test-case
  - global-ui
  - navigation
---

# Test Data
| Field        | Value                 |
| ------------ | --------------------- |
| Nav Item 1   | Home (URL: /)         |
| Nav Item 2   | About (URL: /about)   |
| Nav Item 3   | Services (URL: /services) |
| Nav Item 4   | Contact (URL: /contact) |

# Preconditions
- The website is accessible.
- Navigation bar is visible.

# Steps
1. Navigate to the Home Page.
2. Locate the main navigation bar.
3. Click on each navigation link (e.g., Home, About, Services, Contact).
4. For each click, verify that the browser navigates to the correct corresponding page.
5. (If applicable) Verify that the active navigation item is visually highlighted.

# Expected Result
- All navigation links are clickable and redirect to the correct pages.
- The active page's navigation item is clearly indicated (e.g., different color, underline).

# Notes
- Consider adding sub-tests for dropdown menus if the navigation has them.

# Attachments
