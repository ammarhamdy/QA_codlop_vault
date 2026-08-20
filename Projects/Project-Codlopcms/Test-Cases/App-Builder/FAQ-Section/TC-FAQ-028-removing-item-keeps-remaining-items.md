---
tc_id: TC-FAQ-028
title: Verify Removing an FAQ Item Does Not Modify Remaining Items
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-014
tags:
  - test-case
  - faq
  - remove
  - data-integrity
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item to remove | Item 2 |
| Remaining FAQ Item | Item 1 (Q: How do I reset my password? / A: Go to Settings > Security > Reset password.) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with at least two FAQ items exists and is open for editing.

# Steps
1. Note the question and answer of the remaining FAQ Item 1.
2. Remove FAQ Item 2.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Refresh the mobile application and locate the FAQ section.

# Expected Result
- Removing an FAQ item does not modify the remaining FAQ items.
- The remaining FAQ Item 1 retains its original question and answer in the JSON.
- The mobile app no longer displays the removed FAQ item and continues to display the remaining items.

# Notes

# Attachments