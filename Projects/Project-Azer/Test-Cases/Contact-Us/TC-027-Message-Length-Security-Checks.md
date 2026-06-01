---
tc_id: TC-027
title: Verify Message Content Length Limits and Edge Cases
priority: Medium
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - validation
  - edge-case
---

# Test Data
| Field           | Value                  |
| --------------- | ---------------------- |
| Name            | Length Test            |
| Email Address   | length.test@example.com |
| Phone Number    | +1122334455            |
| Message Content | Very long message exceeding limit / SQL Injection Attempt / XSS Script |
| Request Type    | Suggestion             |

# Preconditions
- User is on the website's 'Contact Us' page.
- The Message Content field has a defined maximum length.

# Steps
1. Navigate to the 'Contact Us' page.
2. Fill in valid data for Name, Email Address, Phone Number, and Request Type.
3. Enter a message that significantly exceeds the maximum allowed length in the Message Content field.
4. Click the "Submit" button.
5. Verify a validation error for message length is displayed.
6. Attempt to submit a message containing common SQL injection payloads (e.g., `' OR 1=1 --`).
7. Attempt to submit a message containing common XSS scripts (e.g., `<script>alert('XSS')</script>`).
8. Verify that the system sanitizes or rejects such inputs, preventing successful injection.

# Expected Result
- For messages exceeding the length limit, an error message (e.g., "Message is too long") should be displayed.
- The system should effectively sanitize or reject inputs containing SQL injection or XSS payloads.
- The form submission should be prevented if validation fails.
- If submission is allowed, the stored message should be sanitized, and no malicious code should execute when reviewed by an administrator.

# Notes
- Identify the exact maximum length for the message content.
- This test combines length validation with basic input sanitization/security checks.

# Attachments
