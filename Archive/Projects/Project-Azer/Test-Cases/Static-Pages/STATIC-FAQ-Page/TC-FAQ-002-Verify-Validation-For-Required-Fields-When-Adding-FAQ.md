---
tc_id: TC-FAQ-002
title: Verify Validation for Required Fields when Adding a New FAQ
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
| Scenario 1 - Question | [Empty] |
| Scenario 1 - Answer | [Empty] |
| Scenario 2 - Question | What is your return policy? |
| Scenario 2 - Answer | [Empty] |
| Scenario 3 - Question | [Empty] |
| Scenario 3 - Answer | We offer a 30-day money back guarantee. |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add New FAQ" creation form.

# Steps
1. Leave both the "Question" and "Answer" input fields completely empty.
2. Click the "Save" or "Submit" button.
3. Enter a valid question into the "Question" field, leave "Answer" empty, and click "Save".
4. Clear the "Question" field, enter a valid answer into the "Answer" field, and click "Save".

# Expected Result
- In Step 2, form submission is blocked. An error message (e.g., "The question field is required" and "The answer field is required") is displayed for both fields.
- In Step 3, form submission is blocked. An error message (e.g., "The answer field is required") is displayed under the answer field.
- In Step 4, form submission is blocked. An error message (e.g., "The question field is required") is displayed under the question field.
- No database entries are created during any of these steps.

# Notes
- Verify that saving is blocked on both client-side form validation and server-side request validation.

# Attachments
