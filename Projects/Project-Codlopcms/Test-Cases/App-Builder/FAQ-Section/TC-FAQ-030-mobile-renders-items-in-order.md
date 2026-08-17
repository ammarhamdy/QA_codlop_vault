---
tc_id: TC-FAQ-030
title: Verify Mobile App Renders FAQ Items in Configured Order
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-015
tags:
  - test-case
  - faq
  - order
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 | Q: First Question |
| FAQ Item 2 | Q: Second Question |
| FAQ Item 3 | Q: Third Question |

# Preconditions
- An FAQ section with items ordered First, Second, Third in `settings.data-object` has been saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section.
4. Observe the order of the rendered FAQ items.

# Expected Result
- The mobile app renders the FAQ items in the same order as they appear in `settings.data-object` (First, Second, Third).

# Notes

# Attachments