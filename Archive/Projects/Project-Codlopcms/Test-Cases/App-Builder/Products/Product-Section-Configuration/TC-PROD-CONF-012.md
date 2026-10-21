---
tc_id: TC-PROD-CONF-012
title: Verify Admin Can Configure Highlight Mode
priority: Low
status:
  - closed
type: Functional
linked_requirement: PROD-REQ-024
tags:
  - test-case
  - configuration
  - highlight
---

# Test Data
| Field | Value |
| ----- | ----- |
| highlight | none |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Select a `highlight` mode from the available options (e.g., "none").
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains the `highlight` field with the selected value.
- When `highlight` is `none`, no badge is rendered on any product card on the mobile app.

# Notes
- The closed list of supported highlight modes should be defined by the system.

# Attachments
