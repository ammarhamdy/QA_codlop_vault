---
tc_id: TC-TEAM-056
title: Refresh Or Navigate Before Save Verify Unsaved Changes Handling
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - reliability
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Setup | Dirty form (edited `title_ar`, unsaved) |

# Preconditions
- Logged in as admin; existing member edit form with unsaved edits.

# Steps
1. Edit `title_ar`/`bio_ar` without saving; attempt in-app navigation away.
2. Record any unsaved-changes prompt.
3. Repeat with browser refresh; record whether edits survive or a warning appears.

# Expected Result
- App handles unsaved changes appropriately: warns before discarding, or explicitly documents autosave/discard behavior — silent data loss fails this case.

# Notes
- Companion to TC-TEAM-055 (failed save) — this covers user-initiated abandonment.

# Attachments
- Screenshots of prompt (or finding if absent).

# Script
```shell
# Manual navigation test — no curl equivalent.
# Confirm nothing was auto-saved without consent:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -o 'title_ar[^>]*value="[^"]*"' | head -1
# Expect: original stored value (unsaved edits must not have persisted silently).
```

---
*Last Updated: 2026-09-24 00:00*
