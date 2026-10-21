---
tc_id: TC-FAQ-004
title: Verify Validation for Required Fields when Editing an FAQ
priority: High
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Original Question | What are your operating hours? |
| Original Answer | Our main support team is available Monday through Friday, from 9:00 AM to 5:00 PM. |

# Preconditions
- The administrator is logged into the admin dashboard.
- The target FAQ exists in the list.
- The admin is on the "Edit FAQ" form for the target FAQ.

# Steps
1. Completely clear all text from the "Question" text input and click "Save" or "Update".
2. Restore the original question, completely clear all text from the "Answer" text input, and click "Save".

# Expected Result
- In Step 1, form submission is blocked. An error message (e.g., "The question field is required") is shown, and the FAQ is not saved.
- In Step 2, form submission is blocked. An error message (e.g., "The answer field is required") is shown, and the FAQ is not saved.
- The original valid content remains preserved in the system and database.

# Notes
- Verify that leaving fields empty does not corrupt the existing database row.

# Attachments
