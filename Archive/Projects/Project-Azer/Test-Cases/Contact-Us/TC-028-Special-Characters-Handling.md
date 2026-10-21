---
tc_id: TC-028
title: Verify Handling of Special Characters in Name and Message Fields
priority: Medium
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - validation
  - edge-case
run_result: Pass
---

# Test Data
| Field           | Value                  |
| --------------- | ---------------------- |
| Name            | @#$%^&*()_+            |
| Message Content | <script>alert(1)</script> Hello World! äöüß |
| Email Address   | special.char@example.com |
| Phone Number    | +1123456789            |
| Request Type    | Inquiry                |

# Preconditions
- User is on the website's 'Contact Us' page.

# Steps
1. Navigate to the 'Contact Us' page.
2. Fill in valid Email Address, Phone Number, and Request Type.
3. Enter various special characters and symbols into the Name field (e.g., `@#$%^&*()_+`).
4. Enter a message containing special characters, emojis, and potentially malicious scripts (e.g., `<script>alert(1)</script> Hello World! äöüß`) into the Message Content field.
5. Click the "Submit" button.
6. If submission is successful, verify that the Name and Message Content are correctly displayed in the administrator's review panel without rendering scripts or corruption.

# Expected Result
- The system should correctly handle and store special characters in Name and Message Content fields.
- Input sanitization should prevent XSS or other injection attacks from malicious characters.
- Submitted data should be displayed accurately to administrators without data corruption or unexpected behavior.

# Notes
- Test a wide range of Unicode characters, emojis, and common script tags.

# Attachments
