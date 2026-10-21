---
tc_id: TC-PROD-REND-012
title: Verify Failed Validation Results in Section Being Skipped, Not Crash
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-034
tags:
  - test-case
  - rendering
  - validation
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| JSON Payload | JSON missing `section_key` field |

# Preconditions
- A Product Section JSON is crafted/emitted that is missing a required field (e.g., `section_key`).
- Mobile app is connected to the backend.

# Steps
1. The mobile app receives the malformed JSON.
2. The app attempts to parse and validate it.

# Expected Result
- Validation fails due to the missing required field.
- The section is skipped (not rendered).
- No app crash occurs.
- Other sections on the Home screen continue to render normally.

# Notes

# Attachments
