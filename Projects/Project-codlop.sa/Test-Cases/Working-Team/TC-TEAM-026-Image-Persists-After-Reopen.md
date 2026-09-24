---
tc_id: TC-TEAM-026
title: Verify Uploaded Image Persists After Save And Reopen
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - persistence
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `photo` | Valid square JPG ≥800×800 (e.g. `./avatar.png` pattern in script) |

# Preconditions
- Logged in as admin; a valid square test image file available locally.

# Steps
1. Create a member with required fields and upload the valid image.
2. Save; confirm preview shows the uploaded image.
3. Reopen the edit form for the same member.
4. Verify the image is still associated (preview/thumbnail shows it, not placeholder).

# Expected Result
- Uploaded image remains associated after save + reopen in both preview and stored profile.

# Notes
- Extends TC-TEAM-009/010 (preview) with post-save association.

# Attachments
- Screenshots of preview before save and after reopen.

# Script
```shell
# Upload image with member create (adjust PHOTO_FILE_PATH as needed):
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "tint=mint" --form "bio_ar=سيرة" \
  --form "email=codlop.sa@mail.com" \
  --form "photo=@./avatar.png;type=image/png" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; reopen edit page and confirm stored photo path present.
```

---
*Last Updated: 2026-09-24 00:00*
