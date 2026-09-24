---
tc_id: TC-TEAM-022
title: Verify Bilingual Biographies Preserve Breaks Punctuation Direction
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - bilingual
  - biography
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `bio_ar` | Multi-line Arabic bio with `،` `؟` punctuation and line breaks |
| `bio_en` | Multi-line English bio with `,.!?` punctuation and line breaks |

# Preconditions
- Logged in as admin; member create/edit form open.

# Steps
1. Enter an Arabic bio with at least 3 lines, Arabic punctuation (`،` `؛` `؟`), and numbers.
2. Enter an English bio with line breaks and `,.!?` punctuation via the language-selection mechanism.
3. Save, reopen the form, and open the public team card.
4. Compare line breaks, punctuation, and text direction in editor vs public card.

# Expected Result
- Line breaks, punctuation, and `rtl` (Arabic) / `ltr` (English) direction preserved in both editor and public card.
- No character conversion (e.g. `،` stays `،`, not `,`).

# Notes
- Extends TC-TEAM-004 (persistence) with formatting fidelity.

# Attachments
- Screenshots of editor and public card bios.

# Script
```shell
# Save member with multiline bios:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس برمجيات" --form "title_en=software engineer" \
  --form "tint=mint" \
  --form "bio_ar=سطر أول، مع فاصلة؛ سطر ثان؟ سطر ثالث 123" \
  --form "bio_en=First line, with comma. Second line! Third line 123" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; then verify breaks/punctuation in edit form and public view.
```

---
*Last Updated: 2026-09-24 00:00*
