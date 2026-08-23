---
tc_id: TC-FAQ-110
title: Verify Mobile App Receives and Renders Configured FAQ Items
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-010
tags:
  - test-case
  - faq
  - items
  - mobile
  - rendering
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 | Q: How do I reset my password? / A: Go to Settings > Security > Reset password. |
| FAQ Item 2 | Q: How do I contact support? / A: Email support@example.com. |

# Preconditions
- An FAQ section with the two FAQ items above has been configured and saved in `settings.data-object`.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section.
4. Observe the FAQ items displayed.

# Expected Result
- The Mobile App receives and renders the configured FAQ items.
- Both FAQ items (with their questions and answers) are present in the FAQ section.

# Notes

# Attachments