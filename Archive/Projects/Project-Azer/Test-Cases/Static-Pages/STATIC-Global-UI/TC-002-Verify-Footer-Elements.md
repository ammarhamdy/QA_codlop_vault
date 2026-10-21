---
tc_id: TC-GUI-003
title: Verify Footer Elements Visibility and Links Functionality
priority: High
status:
  - Ready
type: Functional
tags:
  - test-case
  - global-ui
  - footer
run_result: pass
---

# Test Data
| Field               | Value                               |
| ------------------- | ----------------------------------- |
| Copyright Text      | "© 2026 Company Name. All rights reserved." |
| Social Icon 1       | Facebook (URL: facebook.com/company) |
| Social Icon 2       | Twitter (URL: twitter.com/company) |
| Footer Nav Link 1   | Privacy Policy (URL: /privacy) |

# Preconditions
- The website is accessible on a desktop browser.

# Steps
1. Navigate to any page on the website.
2. Scroll to the bottom of the page to view the footer section.
3. Verify that the copyright information is visible and correct.
4. Verify that social media icons (if present) are visible.
5. Verify that any footer navigation links (e.g., "Privacy Policy", "Terms of Service") are visible.
6. Click on each social media icon and verify it opens the correct social media page in a new tab.
7. Click on each footer navigation link and verify it navigates to the correct page.

# Expected Result
- The footer is consistently displayed across all pages.
- Copyright information, social media icons, and footer navigation links are visible.
- Social media icons redirect to their respective platforms.
- Footer navigation links redirect to their respective pages.

# Notes

# Attachments
