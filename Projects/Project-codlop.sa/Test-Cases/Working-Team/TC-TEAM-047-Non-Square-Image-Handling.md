---
tc_id: TC-TEAM-047
title: Upload Non Square Image Verify Reject Crop Or Stated Handling
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
| `photo` | Wide (1200×800) and tall (800×1200) JPG fixtures |

# Preconditions
- Logged in as admin; non-square fixtures prepared.

# Steps
1. Upload wide image; observe preview; submit; record behavior (reject / crop prompt / auto-handling).
2. Repeat with tall image.
3. Compare against stated image requirements (square).

# Expected Result
- Handled per stated requirements: rejected, cropping offered, or documented auto-crop — visibly stretched avatars or silent acceptance fail this case.

# Notes
- Record the actual app behavior in the run; update requirement if undocumented.

# Attachments
- Screenshots of preview + public card per fixture.

# Script
```shell
python3 -c "from PIL import Image; Image.new('RGB',(1200,800),'blue').save('/tmp/wide.jpg'); Image.new('RGB',(800,1200),'green').save('/tmp/tall.jpg')"
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/wide.jpg;type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: per-requirement handling. Repeat with /tmp/tall.jpg.
```

---
*Last Updated: 2026-09-24 00:00*
