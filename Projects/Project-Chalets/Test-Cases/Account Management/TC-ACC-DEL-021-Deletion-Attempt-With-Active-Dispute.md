---
tc_id: TC-ACC-DEL-021
title: Account Deletion Attempt with an Open Dispute
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| user_phone | +966509789012 |
| dispute_id | DSP-2026-000025 |
| dispute_status | open |

# Preconditions
-User account is in `active` status.
-User is a party to an unresolved dispute (`DSP-2026-000025`) currently under admin review or awaiting evidence / statement.
-User is logged in to the mobile application.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. Observe the blockers list evaluated by `GET /me/deletion`.
3. If allowed to proceed, attempt to submit the deletion request with a valid OTP.
4. Inspect the application response and system behavior.

# Expected Result
- If the system treats open disputes as an active blocker (associated with a frozen booking), the deletion request is blocked with HTTP 422 `DELETION_BLOCKED`.
- The user is informed that pending disputes must be resolved before the account can be deleted.
- If not blocked, the dispute workflow must remain fully preserved with the user's evidence and testimony intact.

# Notes

# Attachments
- None

# Script
- None

---
*Last Updated: 2026-10-20 12:44*
