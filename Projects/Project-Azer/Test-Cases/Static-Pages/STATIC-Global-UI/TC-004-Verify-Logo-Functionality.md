---
tc_id: TC-GUI-004
title: Verify Logo Visibility and Redirection
priority: High
status:
  - Ready
type: Functional
tags:
  - test-case
  - global-ui
  - logo
run_result: pass
---

# Test Data
| Field     | Value          |
| --------- | -------------- |
| Logo File | company_logo.png |
| Target URL| / (Home Page)  |

# Preconditions
- The website is accessible.
- Logo element is present in the header.

# Steps
1. Navigate to an internal page (not the home page, e.g., /about).
2. Locate the company logo in the header.
3. Verify that the logo image is visible and loads correctly.
4. Click on the logo.
5. Verify that the page redirects to the home page.

# Expected Result
- The logo is visible and rendered correctly.
- Clicking the logo successfully navigates the user to the home page.

# Notes

# Attachments
