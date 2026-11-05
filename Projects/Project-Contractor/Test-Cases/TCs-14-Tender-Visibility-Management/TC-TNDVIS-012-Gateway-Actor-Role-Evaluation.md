---
tc_id: TC-TNDVIS-012
title: Verify Gateway Interception and Actor Role Context Evaluation
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Anonymous Request | Authenticated Request |
| ----- | ----------------- | --------------------- |
| Authorization Header | Missing / None | `Bearer <valid_owner_jwt>` |
| Evaluated Actor Context | `Anonymous / Professional` | `Authenticated Tender Owner (ID: TO-101)` |

# Preconditions
1. API gateway / routing middleware is operational.
2. A valid Tender Owner authentication token is available.

# Steps
1. Send an HTTP request to the tender subsystem without an Authorization header.
2. Observe gateway routing and contextual logs.
3. Send an HTTP request to the tender subsystem including the valid Authorization header.
4. Observe gateway routing and contextual logs.

# Expected Result
1. The gateway intercepts the request at the entry level before passing execution to the controller layer.
2. The missing-token request is evaluated as Anonymous/Professional and scoped to public read-only constraints.
3. The token-authenticated request is evaluated as Authenticated Tender Owner and passed with `current_user_id` context.
4. Adheres strictly to Main Flow Steps 1 and 2 in UF-14.

# Notes
- Validates architectural gateway interception under Main Flow Steps 1 and 2 of UF-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
