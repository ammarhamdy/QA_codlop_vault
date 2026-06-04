---
tc_id: TC-CONTACT-003
title: Verify FAQ Section Content on Contact Us Page
priority: High
status: Draft
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - contact-us-page
  - faq
---

# Test Data
| Field         | Value                                  |
| ------------- | -------------------------------------- |
| Question 1    | What are your operating hours?         |
| Answer 1      | Our hours are M-F, 9 AM - 5 PM.        |
| Question 2    | How can I reset my password?           |
| Answer 2      | Click "Forgot Password" on the login page. |
| FAQ Items Count| 2 (Example)                            |

# Preconditions
- The Contact Us page is accessible.

# Steps
1. Navigate to the Contact Us page.
2. Scroll down to the Frequently Asked Questions (FAQ) section.
3. Verify that all configured FAQ questions are visible.
4. For each question, verify that its corresponding answer is visible.
5. Verify that each FAQ item clearly contains both a question and an answer.

# Expected Result
- All configured FAQ questions and their respective answers are visible and correctly formatted.
- Each FAQ item is complete with both a question and an answer.

# Notes
- No JSON content was provided for FAQ items; test data and item count are based on general expectations.

# Attachments
