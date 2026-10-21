---
tc_id: TC-FAQ-010
title: Verify XSS Injection Protection on FAQ Question and Answer Inputs
priority: High
status: Ready
type: Security
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - security
  - xss
---

# Test Data
| Field | Value |
| ----- | ----- |
| Question XSS payload | &lt;script&gt;alert('XSS-Q')&lt;/script&gt; How to register? |
| Answer XSS payload | &lt;img src="invalid_image.png" onerror="alert('XSS-A')"&gt; |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add New FAQ" creation page.

# Steps
1. Copy the Question XSS payload from the test data and paste it into the "Question" text input field.
2. Copy the Answer XSS payload from the test data and paste it into the "Answer" text input field.
3. Click "Save" to submit the form.
4. Navigate to the admin FAQ list page.
5. Navigate to the public client-facing FAQ page.

# Expected Result
- The application cleanses or safely HTML-encodes the payloads upon form submission or prior to rendering.
- No JavaScript alert dialog boxes appear when the FAQ is rendered in either the admin panel list or the public-facing FAQ section.
- Harmful tags (`<script>` or `onerror` handlers) are completely stripped out or printed as safe literal strings.

# Notes
- HTML Purifier or safe blade double curly braces escaping is utilized.

# Attachments
