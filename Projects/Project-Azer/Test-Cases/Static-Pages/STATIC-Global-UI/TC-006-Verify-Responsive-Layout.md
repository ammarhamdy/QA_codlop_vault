---
tc_id: TC-GUI-008
title: Verify Responsive Layout Across Devices
priority: High
status:
  - Ready
type: Functional
tags:
  - test-case
  - global-ui
  - responsive-layout
---

# Test Data
| Field        | Value                 |
| ------------ | --------------------- |
| Desktop      | > 1024px width        |
| Tablet       | 768px - 1024px width  |
| Mobile       | < 768px width         |

# Preconditions
- The website is accessible.
- Browser developer tools or multiple devices are available for testing.

# Steps
1. Navigate to the Home Page.
2. Resize the browser window to simulate a desktop view (e.g., > 1024px width).
3. Verify that the layout and elements (header, navigation, content, footer) are displayed correctly for desktop.
4. Resize the browser window to simulate a tablet view (e.g., 768px - 1024px width).
5. Verify that the layout adjusts appropriately for tablet (e.g., navigation might collapse into a hamburger menu).
6. Resize the browser window to simulate a mobile view (e.g., < 768px width).
7. Verify that the layout adjusts appropriately for mobile (e.g., hamburger menu for navigation, stacked content).
8. For each breakpoint, check for:
    - Text readability (no excessive wrapping or truncation).
    - Image scaling and responsiveness.
    - Element alignment and spacing.
    - Navigation functionality (e.g., hamburger menu opens/closes).

# Expected Result
- The website layout adapts correctly to different screen sizes (desktop, tablet, mobile).
- All elements are accessible and usable across responsive breakpoints.
- No horizontal scrollbars appear unnecessarily.

# Notes
- This test requires manual inspection using browser developer tools (device mode) or testing on actual devices.

# Attachments
