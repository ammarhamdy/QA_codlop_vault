---
tc_id: TC-FAQ-009
title: Verify FAQ Answer Field Supports HTML Formatting and Rich Text Rendering
priority: Medium
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - rich-text
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Question | What payment methods are supported? |
| HTML / Rich Text Answer | <p>We currently support:</p><ul><li>Visa</li><li>Mastercard</li><li>Apple Pay</li></ul> |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add New FAQ" form.

# Steps
1. Enter the valid question from the test data in the "Question" text input field.
2. Enter the HTML formatted text from the test data in the "Answer" text input field (or rich text editor).
3. Click "Save".
4. Navigate to the client-facing website FAQ page.
5. Expand the "What payment methods are supported?" question and observe the answer layout.

# Expected Result
- The FAQ is saved successfully.
- On the client-facing website, the HTML tags are parsed natively instead of printed as raw code (i.e. the user sees an actual bulleted list rather than raw `<ul>` and `<li>` strings).
- Spacing and bullet points render cleanly, aligning with the platform's visual styling.

# Notes
- Prevents raw code injection leaks or broken visual structures for the end users.

# Attachments
