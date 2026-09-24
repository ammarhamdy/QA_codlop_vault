---
tc_id: TC-TEAM-029
title: Verify Real Image Takes Precedence Over Selected Placeholder
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - placeholder
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `photo` | Valid square image file |
| `placeholder` | `pm` (selected alongside real image) |

# Preconditions
- Logged in as admin; valid test image available.

# Steps
1. Select a temporary illustration and upload a real image in the same form.
2. Save; check preview and public team card.
3. Confirm which visual is displayed.

# Expected Result
- Real uploaded image is displayed; placeholder is suppressed (not composited or randomly chosen).

# Notes
- Inverse of TC-TEAM-072 (remove image restores placeholder).

# Attachments
- Screenshots of preview and public card showing real image.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "tint=mint" --form "bio_ar=سيرة" \
  --form "photo=@./avatar.png;type=image/png" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; stored profile uses uploaded photo, not placeholder.
```

---
*Last Updated: 2026-09-24 00:00*
