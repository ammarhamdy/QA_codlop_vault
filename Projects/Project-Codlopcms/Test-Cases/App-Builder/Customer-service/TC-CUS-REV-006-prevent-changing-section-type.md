---
tc_id: TC-CUS-REV-006
title: Verify the Administrator Cannot Change the Customer Review Section Type
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-003
tags:
  - test-case
  - customer-review
  - type
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Current `type` value | customer_review |
| Attempted `type` value | banner |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section is open for editing.

# Steps
1. Locate the Customer Review section `type` attribute.
2. Attempt to change the `type` value to another section type (e.g., `banner`).
3. Attempt to save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `type` attribute.

# Expected Result
- The administrator cannot change the `type` value to another section type.
- The `type` value remains `customer_review`.
- The generated JSON still contains `"type": "customer_review"`.

# Notes

# Attachments