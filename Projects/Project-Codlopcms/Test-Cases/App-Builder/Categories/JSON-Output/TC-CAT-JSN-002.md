---
tc_id: TC-CAT-JSN-002
title: Generated JSON validates against the documented schema
priority: High
status:
  - completed
type: API
linked_requirement: CAT-REQ-036
tags:
  - test-case
  - json
  - backend
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section config | All fields populated with valid values |

# Preconditions
- A fully valid Categories section is configured and saved.

# Steps
1. Retrieve the generated JSON.
2. Validate the JSON against the documented schema (Section 3 of the spec):
   - All required fields present.
   - Data types match the contract.
   - Allowed values are respected.
   - style sub-fields match Section 3.2.
   - settings sub-fields match Section 3.3.
3. Validate JSON well-formedness (parseable).

# Expected Result
- The JSON is syntactically well-formed.
- All fields pass schema validation.
- No extra or unexpected top-level fields are present.

# Notes
# Attachments
