---
tc_id: TC-FAQ-101
title: Verify FAQ Question and Answer Changes Are Reflected After Refresh
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - question
  - answer
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Question (before) | How do I reset my password? |
| Question (after) | How can I change my password? |
| Answer (before) | Go to Settings > Security. |
| Answer (after) | Use the password reset link sent to your email. |

# Preconditions
- An FAQ section with the original question and answer is rendered in the Mobile App.
- Administrator updates the question and answer in the App Builder.

# Steps
1. Update the FAQ item question to "How can I change my password?" and answer to "Use the password reset link sent to your email.".
2. Save the section.
3. Refresh the mobile application configuration.
4. Expand the FAQ item and observe the displayed content.

# Expected Result
- Changes to FAQ questions and answers are reflected after refresh.
- The Mobile App displays the updated question and answer.

# Notes

# Attachments