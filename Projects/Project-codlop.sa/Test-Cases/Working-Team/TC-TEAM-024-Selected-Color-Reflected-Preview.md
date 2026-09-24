---
tc_id: TC-TEAM-024
title: Verify Selected Card Color Reflected In Preview And Team Card
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - card-color
  - preview
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `tint` | `mint` then a second color (e.g. `cyan`) |

# Preconditions
- Logged in as admin; member form with live preview (if available) open.

# Steps
1. Select a card color (e.g. `mint`); observe the member card preview.
2. Save; open the resulting public team card and record its color.
3. Edit the member, select a different color, save again, and re-check preview and public card.

# Expected Result
- Each selected color is reflected in the preview (if present) and in the saved public team card.
- No stale color from the previous selection remains after re-save.

# Notes
- Follows TC-TEAM-023; TC-TEAM-006 covers retention across reload.

# Attachments
- Screenshots of preview and public card for both colors.

# Script
```shell
# Save with tint=mint then re-save with another tint and compare:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس برمجيات" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; repeat with different tint and verify stored value changes.
```

---
*Last Updated: 2026-09-24 00:00*
