---
tc_id: TC-FAQ-102
title: Verify Added FAQ Items Are Displayed After Configuration Refresh
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - add-item
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item (new) | Q: How do I cancel my order? / A: Contact support to cancel your order. |

# Preconditions
- An FAQ section is rendered in the Mobile App.
- Administrator adds a new FAQ item in the App Builder.

# Steps
1. Add a new FAQ item "How do I cancel my order?" / "Contact support to cancel your order.".
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ section in the Mobile App.

# Expected Result
- Added FAQ items are displayed after refresh.
- The new FAQ item appears in the FAQ section in the Mobile App.

# Notes

# Attachments