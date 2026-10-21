---
tc_id: TC-CUS-REV-005
title: Verify Section Type Is Fixed to "customer_review" in the JSON Configuration
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-003
tags:
  - test-case
  - customer-review
  - type
  - json
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expected `type` value | customer_review |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created.

# Steps
1. Create a Customer Review section in the App Builder.
2. Retrieve the generated JSON configuration.
3. Inspect the `type` attribute of the Customer Review section.
4. Provide the configuration to the Mobile App and observe section identification.

# Expected Result
- The Customer Review section contains a `type` attribute.
- The `type` value is always `customer_review`.
- The generated JSON contains `"type": "customer_review"` for the Customer Review section.
- The Mobile App uses the `type` value to identify the section as a Customer Review component.

# Notes

# Attachments