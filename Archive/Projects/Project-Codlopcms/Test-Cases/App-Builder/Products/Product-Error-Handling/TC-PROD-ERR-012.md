---
tc_id: TC-PROD-ERR-012
title: Verify Duplicate Product IDs in data-strings Are Handled on Mobile
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-030, PROD-REQ-035
tags:
  - test-case
  - error-handling
  - duplicates
  - mobile
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["prod-001", "prod-002", "prod-001"] |

# Preconditions
- By misconfiguration, duplicate product IDs exist in `data-strings`.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app attempts to resolve and render products.

# Expected Result
- The product "prod-001" is rendered only once (deduplication).
- The section renders without crashing.
- No duplicate product card is shown.

# Notes
- The Admin Panel should prevent duplicates at save time (see TC-PROD-SRC-009), but the mobile app should also handle this gracefully.

# Attachments
