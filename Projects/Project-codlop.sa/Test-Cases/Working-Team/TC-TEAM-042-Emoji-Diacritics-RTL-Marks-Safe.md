---
tc_id: TC-TEAM-042
title: Enter Emoji Diacritics RTL Marks Verify No Content Corruption
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - i18n
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `name_ar` | `مُحَمَّد 🎉 ‏‬` (diacritics + emoji + RTL marks) |
| `bio_ar` | Combining chars + `U+200F`/`U+202B` marks + emoji sequence |

# Preconditions
- Logged in as admin; form open.

# Steps
1. Enter emoji, combining characters, Arabic diacritics, and explicit RTL marks in name/title/bio.
2. Save; reopen form and open public card.
3. Compare surrounding content order and glyph integrity.

# Expected Result
- Text stored/displayed without corrupting adjacent content; no mirrored punctuation, no broken graphemes, no layout spill.

# Notes
- Check both UTF-8 storage and BiDi isolation in the card template.

# Attachments
- Screenshots of editor and public card.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=مُحَمَّد 🎉" --form "title_ar=مهندس برمجيات 🎉" \
  --form "bio_ar=تَشْكِيل ‏تجربة‬ ✌️" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; verify round-trip fidelity in edit form and public view.
```

---
*Last Updated: 2026-09-24 00:00*
