---
tc_id: TC-CUS-REV-009
title: Configure the Customer Review Section Title
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-005
tags:
  - test-case
  - customer-review
  - title
  - configuration
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | Customer Reviews |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section title field.
2. Enter the title "Customer Reviews".
3. Modify the title to "What Our Customers Say".
4. Save the section.
5. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `title` attribute.
- The administrator can enter and modify the Customer Review section title.
- The configured title is stored in the section configuration.
- The generated JSON contains the configured title in the `title` attribute.

# Notes

# Attachments