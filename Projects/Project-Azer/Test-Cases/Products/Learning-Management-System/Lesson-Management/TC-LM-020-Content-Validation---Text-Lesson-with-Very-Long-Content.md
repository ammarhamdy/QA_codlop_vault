---
tc_id: TC-LM-020
title: Content Validation - Text Lesson with Very Long Content
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Comprehensive Tafsir |
| Description/Text Content | A string of exactly 65,535 characters (database TEXT limit) |
| Question Title | Tafsir Quiz |
| Success Rate | 70 |

# Preconditions
- Admin has a large body of lesson text prepared.

# Steps
1. Select 'text' lesson type.
2. Paste 65,535 characters of text into the Description text area.
3. Submit the lesson.

# Expected Result
- The lesson is saved successfully without truncation or database error, and displays with proper layout (e.g. scrollbars or pagination if necessary).

# Notes

# Attachments
