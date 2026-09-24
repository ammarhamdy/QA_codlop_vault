---
tc_id: TC-TEAM-011
title: Verify Existing Image Displayed When No Replacement Selected
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - no-change
---

# Test Data
| Field | Value |
| ----- | ----- |
| `photo` | empty file input (`photo=;filename=` — curl default when no file chosen) |
| Baseline | record current photo URL before save |

# Preconditions
- Member already has a saved photo (run TC-TEAM-009 first if none).
- Edit form open; do NOT touch the `photo` input.

# Steps
1. Record the current preview image URL/src.
2. Change an unrelated field (e.g. append a character to `bio_en`) and save with the file input untouched.
3. Compare the preview image URL/src after save + reload.

# Expected Result
- Existing image remains displayed; preview URL unchanged.
- Save succeeds; unrelated field update persists; photo is not cleared or replaced by placeholder.

# Notes
- This is the empty-file-input path in the provided curl (`PHOTO_FIELD="photo=;filename="`).
- Fails if saving without a new file wipes the photo.

# Attachments
- Before/after preview screenshots with image URLs.

# Script
```shell
# Baseline photo URL:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -o 'src="[^"]*team[^"]*"'
# Save with empty file input (same as curl default branch):
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio updated" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: photo src identical before and after.
```

---
*Last Updated: 2026-09-24 00:00*
