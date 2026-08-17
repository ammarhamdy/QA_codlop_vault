---
tc_id: TC-FAQ-105
title: Verify FAQ Styling Changes Are Reflected After Configuration Refresh
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - styling
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background (before) | #f4f6f8 |
| style.background (after) | #ffffff |
| style.radius (after) | 24 |

# Preconditions
- An FAQ section with `style.background: "#f4f6f8"` is rendered in the Mobile App.
- Administrator updates section styling in the App Builder.

# Steps
1. Change the FAQ section background to #ffffff and radius to 24.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ section styling in the Mobile App.

# Expected Result
- Changes to FAQ section styling are reflected after refresh.
- The Mobile App displays the FAQ section with the updated background and radius.

# Notes

# Attachments