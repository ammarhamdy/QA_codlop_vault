---
tc_id: TC-FAQ-034
title: Verify Question and Answer Association and Content Integrity in Accordion
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-016
tags:
  - test-case
  - faq
  - accordion
  - association
  - content-integrity
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 | Q: How do I reset my password? / A: Go to Settings > Security. |
| FAQ Item 2 | Q: How do I contact support? / A: Email support@example.com. |

# Preconditions
- An FAQ section has the two FAQ items above in `settings.data-object`.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application and navigate to the home screen.
2. Expand the first accordion item.
3. Note the answer displayed under the first question.
4. Collapse the first item and expand the second item.
5. Note the answer displayed under the second question.

# Expected Result
- Each question is associated with its correct answer (first question shows its own answer, second question shows its own answer).
- FAQ items are rendered in the order defined by `settings.data-object`.
- The accordion rendering does not alter the configured question or answer content.

# Notes

# Attachments