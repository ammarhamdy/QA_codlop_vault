---
tc_id: TC-LM-008
title: Create Lesson with Mixed Language Title
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
| Lesson Title | "Lesson 2.1: أركان الإسلام - Introduction" |
| Lesson Content | Valid PDF file upload |
| Question Title | Pillars |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Input a mixed English and Arabic string into 'Lesson Title'.
2. Complete required fields and submit.

# Expected Result
- The lesson is created successfully with mixed text aligning properly in the UI.

# Notes

# Attachments
