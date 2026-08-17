---
tc_id: TC-FAQ-026
title: Verify Updated Question and Answer Are Reflected in JSON and Mobile App
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-013
tags:
  - test-case
  - faq
  - edit
  - json
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Updated question | How can I change my password? |
| Updated answer | Use the password reset link sent to your email. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ item has been updated with the question and answer above and saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the updated question and answer under `settings.data-object`.
3. Refresh the mobile application.
4. Navigate to the home screen and locate the FAQ item.

# Expected Result
- The generated JSON reflects the updated question and answer under `settings.data-object`.
- The mobile app displays the updated question and answer after the updated configuration is retrieved.

# Notes

# Attachments