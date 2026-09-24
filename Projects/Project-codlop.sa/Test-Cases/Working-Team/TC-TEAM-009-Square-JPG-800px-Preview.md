---
tc_id: TC-TEAM-009
title: Upload Valid Square JPG At Least 800x800 Verify Preview Updates
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - jpg
---

# Test Data
| Field | Value |
| ----- | ----- |
| File | square `.jpg`, sRGB, ≥800×800px (e.g. 800×800, 1000×1000) |
| Field | `photo` (multipart file input) |
| Max size | within server limit (record actual limit during run) |

# Preconditions
- Edit form open; note the current image/preview hash.
- Valid JPG fixture prepared locally; verify dimensions with `identify`/`file`.

# Steps
1. Choose the JPG file in the `photo` input.
2. Observe the client-side preview before saving.
3. Save the form.
4. Verify the preview/thumbnail now shows the new image (not the old one).
5. Reload and confirm the new image is still shown.

# Expected Result
- JPG accepted; preview updates immediately on selection and persists after save + reload.
- Image is not distorted (square aspect preserved); no upload error.
- Stored `photo` path points to the new file.

# Notes
- Cache-bust check: hard-refresh or compare image URL hash to rule out stale-cache false pass.
- Keep the fixture (name + dimensions + size) in the run notes for repeatability.

# Attachments
- Before/after preview screenshots; fixture file metadata (`identify -verbose`).

# Script
```shell
PHOTO_PATH="/tmp/team-800x800.jpg"  # square JPG >= 800x800
identify -format "%m %wx%h\n" "$PHOTO_PATH"
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "linkedin_url=https://linnkedin.com" --form "x_url=https://x.com/codlop" \
  --form "email=codlop.sa@mail.com" --form "photo=@${PHOTO_PATH};type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: success; member photo URL changes to the new upload.
```

---
*Last Updated: 2026-09-24 00:00*
