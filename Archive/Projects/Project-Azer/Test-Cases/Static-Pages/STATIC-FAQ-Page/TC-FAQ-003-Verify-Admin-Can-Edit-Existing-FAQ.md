---
tc_id: TC-FAQ-003
title: Verify Admin Can Edit an Existing FAQ's Question and Answer
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
| Existing Question | What are your operating hours? |
| Existing Answer | Our main support team is available Monday through Friday, from 9:00 AM to 5:00 PM. |
| Updated Question | What are your core operating hours? |
| Updated Answer | Our core support team is available M-F, 9 AM - 5 PM (EST). |

# Preconditions
- The administrator is logged into the admin dashboard.
- An FAQ item with the existing question and answer already exists in the system.
- The administrator is on the FAQ list management page.

# Steps
1. Locate the target FAQ item in the list and click its "Edit" button.
2. Verify that the current Question and Answer are loaded correctly in their respective text inputs.
3. Modify the question in the "Question" field to the updated question value.
4. Modify the answer in the "Answer" field to the updated answer value.
5. Click the "Save" or "Update" button.

# Expected Result
- A success notification (e.g., "FAQ updated successfully") is displayed.
- The FAQ list reflects the updated question and answer.
- The database stores the modified content, overwriting the old values.
- The updated content is correctly rendered on the public-facing FAQ section without duplicates.

# Notes
- Ensure that the original ID or slug of the FAQ is preserved during update.

# Attachments
