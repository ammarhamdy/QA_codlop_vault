---
tc_id: TC-PROD-CRE-004
title: Verify Section Type Is Automatically Set to "product" and Is Not Editable
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-003
tags:
  - test-case
  - creation
  - type
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Type | product |

# Preconditions
- Admin is logged into the Admin Panel.

# Steps
1. Create a new Product Section.
2. Observe the `type` field in the section configuration.
3. Attempt to edit or change the `type` field.

# Expected Result
- The `type` field is automatically set to `product`.
- The `type` field is read-only and cannot be changed by the admin.
- In the generated JSON, the `type` attribute is present with value `product`.

# Notes
- The mobile renderer uses `type: product` to route the JSON payload to the Product Section rendering module.

# Attachments
