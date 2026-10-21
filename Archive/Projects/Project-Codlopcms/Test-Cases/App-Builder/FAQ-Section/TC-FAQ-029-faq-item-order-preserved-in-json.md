---
tc_id: TC-FAQ-029
title: Verify FAQ Item Order Is Preserved in the JSON Configuration
priority: Medium
status:
  - completed
type: API
linked_requirement: FAQ-REQ-015
tags:
  - test-case
  - faq
  - order
  - json
  - api
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 | Q: First Question |
| FAQ Item 2 | Q: Second Question |
| FAQ Item 3 | Q: Third Question |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has three FAQ items ordered as listed above and has been saved.

# Steps
1. Define the order of the three FAQ items.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the order of items in `settings.data-object`.

# Expected Result
- The configured order is preserved in `settings.data-object`.
- The generated JSON maintains the configured FAQ item order (First, Second, Third).

# Notes

# Attachments