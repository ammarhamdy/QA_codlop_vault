---
tc_id: TC-CAT-CFG-031
title: Category Data Resolution at Render Time
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-030
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["cat_001", "cat_002", "cat_003"] |
| categorySource | external_categories |

# Preconditions
- A Categories section is configured and enabled with three external category IDs.

# Steps
1. Load the Home screen on the mobile app.
2. Verify the app requests category details for each configured identifier from the configured source.
3. Verify the three categories are rendered with their resolved display data (name, image, etc.).
4. Verify the resolved order matches the array order.

# Expected Result
- The mobile app resolves each identifier against the configured categorySource.
- Category display data (name, image, price) is obtained from the source.
- Categories render with their resolved data in the configured order.

# Notes
# Attachments
