---
tc_id: TC-CUS-REV-001
title: Create a Customer Review Section in the App Builder
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-001
tags:
  - test-case
  - customer-review
  - creation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section creation action | Add Customer Review section |
| Application configuration | Home screen config |

# Preconditions
- Administrator is logged into the App Builder.
- The application's home screen configuration is open for editing.

# Steps
1. Open the App Builder and the home screen configuration.
2. Create a new Customer Review section.
3. Verify the section is identified as a Customer Review section.
4. Verify the section contains the required Customer Review configuration structure.
5. Save the section.

# Expected Result
- The Customer Review section is created successfully and identified as a Customer Review section.
- The section contains the required Customer Review configuration structure (id, type, layout, title, style, settings).
- The section is saved successfully and is available to be provided to the mobile application for rendering.

# Notes

# Attachments