---
tc_id: TC-TEAM-012
title: Select Delete Image Option Verify Placeholder After Saving
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-delete
  - placeholder
---

# Test Data
| Field | Value |
| ----- | ----- |
| Delete control | remove-photo checkbox / delete-image button (record exact label) |
| `placeholder` | `pm` (per curl default) |
| Expected preview | temporary placeholder avatar, not broken image |

# Preconditions
- Member has a saved photo.

# Steps
1. In the edit form, select the delete/remove image option (and confirm if a confirm dialog appears).
2. Save the form.
3. Verify the preview changes to the temporary placeholder.
4. Reload and verify the placeholder persists; verify the old file is no longer referenced.

# Expected Result
- After save, preview shows the placeholder (consistent with `placeholder=pm`), not the old photo and not a broken image.
- Old photo reference removed; member record has no orphan preview.

# Notes
- Record whether delete is immediate (JS) or applied on save — both must converge to placeholder after save.
- Re-upload a photo afterwards to restore baseline for later image tests.

# Attachments
- Before (photo) / after (placeholder) screenshots.

# Script
```shell
# UI-driven (delete control has no curl equivalent); verify state via API/UI:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -Eo '(placeholder|photo)[^<]{0,80}'
# Expect after save: photo empty/removed, placeholder=pm active, preview = placeholder avatar.
```

---
*Last Updated: 2026-09-24 00:00*
