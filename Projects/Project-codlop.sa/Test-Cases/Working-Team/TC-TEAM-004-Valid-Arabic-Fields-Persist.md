---
tc_id: TC-TEAM-004
title: Enter Valid Arabic Name Title Biography Save and Verify Persistence
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - arabic-fields
  - persistence
run_result: pass
---

# Test Data
| Field      | Value                                                                                      |
| ---------- | ------------------------------------------------------------------------------------------ |
| `name_ar`  | `احمد`                                                                                     |
| `title_ar` | `مهندس برمجيات`                                                                            |
| `bio_ar`   | `مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات` |

# Preconditions
- Edit form open; logged in as admin.

# Steps
1. Enter `احمد` in `name_ar`.
2. Enter `مهندس برمجيات` in `title_ar`.
3. Enter the multi-word Arabic biography in `bio_ar`.
4. Save.
5. Reload the edit page and re-read all three fields.
6. Check the public team card (AR locale).

# Expected Result
- Save succeeds with success confirmation.
- After reload, all three values persist exactly (character-for-character, no trimming of inner spaces beyond normalisation).
- Public card shows the new Arabic name, title, and biography with RTL layout.

# Notes
- Uses the exact values from the provided create-form curl to keep UI/API parity.
- Restore `title_ar=مهندس الدعم الفني` after run if other cases depend on the seeded value.

# Attachments
- Screenshot of saved form + public card.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -H "referer: https://test.codlop.sa/admin/team/create" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس برمجيات" --form "title_en=software engineer" \
  --form "tint=mint" \
  --form "bio_ar=مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات" \
  --form "bio_en=software engineer software engineer software engineer software engineer software engineer" \
  --form "linkedin_url=https://linnkedin.com" --form "x_url=https://x.com/codlop" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302/success; re-GET edit page shows the same Arabic values.
```

---
*Last Updated: 2026-09-24 00:00*
