---
tc_id: TC-TEAM-010
title: Upload Valid WebP Image and Verify Previewed Successfully
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - webp
---

# Test Data
| Field | Value |
| ----- | ----- |
| File | valid `.webp` image (square ≥800×800 preferred) |
| Field | `photo` |

# Preconditions
- Edit form open; WebP fixture prepared locally.

# Steps
1. Choose the WebP file in the `photo` input.
2. Observe the client-side preview before saving.
3. Save, then verify the preview shows the WebP image.
4. Reload and confirm persistence; open the public card and verify the image renders.

# Expected Result
- WebP accepted and previewed (no `unsupported type` error, no broken-image icon).
- Preview and public card both render the uploaded WebP after save + reload.

# Notes
- If the app converts WebP to JPG on the server, record the stored extension — still a pass if preview/card render correctly.
- Test in Chrome + one WebKit browser (Safari) since WebP handling differs.

# Attachments
- Preview + public card screenshots; fixture metadata.

# Script
```shell
PHOTO_PATH="/tmp/team-800x800.webp"
identify -format "%m %wx%h\n" "$PHOTO_PATH"
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=@${PHOTO_PATH};type=image/webp" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: success; photo renders in preview and on the team page.
```

---
*Last Updated: 2026-09-24 00:00*
