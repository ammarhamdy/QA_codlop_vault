---
tc_id: TC-FAQ-001
title: Create an FAQ Section in the App Builder
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-001
tags:
  - test-case
  - faq
  - creation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section creation action | Add FAQ section |
| Application configuration | Home screen config |

# Preconditions
- Administrator is logged into the App Builder.
- The application's home screen configuration is open for editing.

# Steps
1. Open the App Builder and the home screen configuration.
2. Create a new FAQ section.
3. Verify the section is identified as an FAQ section.
4. Verify the section contains the required FAQ configuration structure.
5. Save the section.

# Expected Result
- The FAQ section is created successfully and identified as an FAQ section.
- The section contains the required FAQ configuration structure (id, type, layout, title, style, settings).
- The section is saved successfully and is available to be provided to the mobile application for rendering.

# Notes

# Attachments