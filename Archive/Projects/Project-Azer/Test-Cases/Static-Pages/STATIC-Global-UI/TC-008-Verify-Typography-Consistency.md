---
tc_id: TC-GUI-005
title: Verify Typography Consistency Across Website
priority: Medium
status:
  - Ready
type: Functional
tags:
  - test-case
  - global-ui
  - typography
---

# Test Data
| Field          | Value                                   |
| -------------- | --------------------------------------- |
| Font Family    | 'Arial', sans-serif (example)           |
| H1 Size        | 32px (example)                          |
| Paragraph Size | 16px (example)                          |
| Text Color     | #333333 (example)                       |

# Preconditions
- The website is accessible.
- Design specifications for typography are available.

# Steps
1. Navigate to various pages of the website (e.g., Home, About, Contact).
2. Inspect different text elements (headings H1-H6, paragraphs, links, buttons).
3. Using browser developer tools, verify that font family, font size, font weight, and line height are consistent with design specifications for each element type.
4. Check for consistent text colors.

# Expected Result
- Typography (font family, size, weight, color) is consistently applied according to the design system throughout the website.
- No unexpected font styles or sizes are present.

# Notes
- This test requires visual inspection and potentially developer tools for precise verification.

# Attachments
