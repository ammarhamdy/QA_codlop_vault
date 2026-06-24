---
tc_id: TC-LM-005
title: Create Lesson with Special Characters in Title
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | "Lesson 1.1: Basics & Fundamentals #@!*()_+" |
| Lesson Content | Valid PDF file upload |
| Question Title | Valid Title |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Enter 'Lesson 1.1: Basics & Fundamentals #@!*()_+' as the title.
2. Complete the form and submit.

# Expected Result
- The lesson is created successfully. Special characters are correctly sanitized and stored.

# Notes

# Attachments
