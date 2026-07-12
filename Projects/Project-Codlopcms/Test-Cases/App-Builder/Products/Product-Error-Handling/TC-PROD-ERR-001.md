---
tc_id: TC-PROD-ERR-001
title: Verify Malformed JSON Causes Section Exclusion Without Affecting Other Sections
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-041
tags:
  - test-case
  - error-handling
  - malformed-json
  - mobile
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 JSON | Valid Product Section |
| Section 2 JSON | Malformed (truncated JSON, missing closing brace) |
| Section 3 JSON | Valid Banner Section |

# Preconditions
- A Home screen configuration has three sections.
- Section 2's JSON is deliberately malformed (e.g., `{ "id": "s2", "type": "product", ...` without closing brace).
- Mobile app is connected to the backend.

# Steps
1. The mobile app fetches the Home screen configuration.
2. The app attempts to parse Section 2's JSON.
3. Observe the rendered Home screen.

# Expected Result
- Section 2 is omitted from the rendered Home screen (fails to parse).
- The error is logged for diagnostics (not surfaced to the user).
- Section 1 and Section 3 render normally.
- The app does not crash.

# Notes
- Also test with other forms of malformed JSON: invalid characters, duplicate keys, null bytes, etc.

# Attachments
