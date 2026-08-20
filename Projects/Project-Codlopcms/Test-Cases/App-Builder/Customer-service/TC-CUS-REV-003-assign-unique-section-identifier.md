---
tc_id: TC-CUS-REV-003
title: Verify a Unique Identifier Is Assigned to the Customer Review Section
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-002
tags:
  - test-case
  - customer-review
  - identifier
  - uniqueness
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section attribute | id |
| Application configuration | Home screen config |

# Preconditions
- Administrator is logged into the App Builder.
- The application's home screen configuration is open for editing.

# Steps
1. Create a Customer Review section.
2. Note the `id` value assigned to the section.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `id` attribute of the Customer Review section.

# Expected Result
- The Customer Review section contains an `id` attribute.
- The `id` value is unique and distinguishes the Customer Review section from other sections in the application configuration.
- The assigned identifier remains associated with the section after saving.
- The `id` is included in the generated JSON configuration.

# Notes

# Attachments