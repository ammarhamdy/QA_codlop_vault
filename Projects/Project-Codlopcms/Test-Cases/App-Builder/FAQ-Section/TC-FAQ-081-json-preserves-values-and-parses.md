---
tc_id: TC-FAQ-081
title: Verify Generated FAQ JSON Preserves Configured Values and Is Parseable
priority: High
status: Draft
type: API
linked_requirement: FAQ-REQ-036
tags:
  - test-case
  - faq
  - json
  - api
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | Frequently Asked Questions |
| style.background | #f4f6f8 |
| settings.showTitle | true |
| FAQ Item question | How do I reset my password? |
| FAQ Item answer | Go to Settings > Security. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been configured with the values above and saved.

# Steps
1. Retrieve the generated FAQ JSON configuration.
2. Parse the JSON using a JSON parser.
3. Compare the parsed values against the configured values.

# Expected Result
- The generated JSON can be parsed successfully.
- The `style` object contains the configured FAQ styling attributes.
- The `settings` object contains the configured FAQ settings and data.
- The generated configuration preserves the administrator's configured values.

# Notes

# Attachments