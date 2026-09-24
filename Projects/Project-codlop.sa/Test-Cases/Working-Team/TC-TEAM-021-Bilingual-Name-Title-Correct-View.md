---
tc_id: TC-TEAM-021
title: Save Bilingual Names Titles Verify Correct Language In Team View
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - bilingual
  - team-view
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `name_ar` | `احمد` |
| `name_en` | `Ahmed` |
| `title_ar` | `مهندس برمجيات` |
| `title_en` | `software engineer` |
| `is_visible` | `1` |

# Preconditions
- Logged in as admin; team page accessible publicly.

# Steps
1. Create a member with both Arabic and English names and job titles (values above).
2. Save and note the member identifier.
3. Open the public team view in Arabic context; record displayed name/title.
4. Open the public team view in English context; record displayed name/title.

# Expected Result
- Arabic context shows `احمد` / `مهندس برمجيات`; English context shows `Ahmed` / `software engineer`.
- No cross-language leakage (Arabic text in English view or vice versa).

# Notes
- Uses exact field values from `Scripts/create-team-member.sh:24-27`.

# Attachments
- Screenshots of both language views for the same member.

# Script
```shell
# Create bilingual member (cookies/token must be fresh):
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس برمجيات" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302 redirect to team index on success.
```

---
*Last Updated: 2026-09-24 00:00*
