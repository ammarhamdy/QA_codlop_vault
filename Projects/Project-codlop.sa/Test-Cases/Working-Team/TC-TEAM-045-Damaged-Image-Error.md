---
tc_id: TC-TEAM-045
title: Upload Damaged JPG WebP Verify Useful Error No Broken Preview
priority: Medium
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
| `photo` | Truncated/corrupt `.jpg` and `.webp` files |

# Preconditions
- Logged in as admin; corrupt fixtures created (e.g. `head -c 100 valid.jpg > corrupt.jpg`).

# Steps
1. Attach corrupt JPG; observe preview; submit; record message.
2. Repeat with corrupt WebP.
3. Verify existing saved image (if any) is not destroyed by the failed upload.

# Expected Result
- Useful error shown; preview does not break the form; previously saved image intact.

# Notes
- Distinguishes decode failure from wrong-format rejection (TC-TEAM-044).

# Attachments
- Screenshots of error + intact preview.

# Script
```shell
head -c 100 ./avatar.png > /tmp/corrupt.jpg
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/corrupt.jpg;type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1" | grep -io 'photo[^<]*' | head -2
# Expect: validation/decode error for photo.
```

---
*Last Updated: 2026-09-24 00:00*
