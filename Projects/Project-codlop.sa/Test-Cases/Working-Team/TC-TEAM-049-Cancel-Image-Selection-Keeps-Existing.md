---
tc_id: TC-TEAM-049
title: Cancel Image Selection Verify Existing Preview And Image Kept
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Setup | Member with saved image; edit form open |

# Preconditions
- Logged in as admin; member with an existing saved image open in edit form.

# Steps
1. Click the upload control to open the file picker.
2. Cancel/close the picker without choosing a file.
3. Verify preview still shows the existing image.
4. Save without changes; verify stored image unchanged.

# Expected Result
- Cancel removes nothing: preview and saved image intact; no placeholder substitution.

# Notes
- UI-only flow; complements TC-TEAM-011 (no replacement selected).

# Attachments
- Screenshots before/after cancel.

# Script
```shell
# Manual file-picker cancel test — no curl equivalent.
# Post-check stored photo still present:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -o 'img[^>]*src="[^"]*"' | head -3
# Expect: existing photo src still rendered.
```

---
*Last Updated: 2026-09-24 00:00*
