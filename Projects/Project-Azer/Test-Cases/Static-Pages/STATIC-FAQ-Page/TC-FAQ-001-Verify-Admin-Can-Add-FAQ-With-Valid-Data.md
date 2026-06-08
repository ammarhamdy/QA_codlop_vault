---
tc_id: TC-FAQ-001
title: Verify Admin Can Add a New FAQ with Valid Data
priority: High
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - functional
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Question | What are your operating hours? |
| Answer | Our main support team is available Monday through Friday, from 9:00 AM to 5:00 PM. |

# Preconditions
- The administrator is logged into the admin dashboard with full privileges.
- The administrator is on the FAQ management page in the admin panel.

# Steps
1. Click on the "Add FAQ" or "Create FAQ" button.
2. Enter the valid question from the test data in the "Question" text input field.
3. Enter the valid answer from the test data in the "Answer" text input field.
4. Click the "Save" or "Submit" button.

# Expected Result
- A success toast notification or message (e.g., "FAQ created successfully") is displayed.
- The newly created FAQ appears at the top or in the list of FAQ items in the admin panel.
- The entry is successfully written to the database.
- The new FAQ displays correctly on the public-facing FAQ section.

# Notes
- Verify that standard whitespace trim happens on submit to avoid leading/trailing spaces.

# Attachments
