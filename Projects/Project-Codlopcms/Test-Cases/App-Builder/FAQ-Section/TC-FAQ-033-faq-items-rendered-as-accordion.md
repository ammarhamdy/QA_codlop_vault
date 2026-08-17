---
tc_id: TC-FAQ-033
title: Verify FAQ Items Are Rendered as Accordion Items
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-016
tags:
  - test-case
  - faq
  - accordion
  - rendering
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| layout | accordion |
| FAQ Item 1 | Q: How do I reset my password? / A: Go to Settings > Security. |
| FAQ Item 2 | Q: How do I contact support? / A: Email support@example.com. |

# Preconditions
- An FAQ section has `layout: accordion` with the two FAQ items above in `settings.data-object`.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section.
4. Observe how the FAQ items are presented.

# Expected Result
- The mobile app renders the FAQ section using the `accordion` layout.
- Each configured FAQ item is rendered as an individual accordion item.
- Each question is displayed as the accordion item's header.

# Notes

# Attachments