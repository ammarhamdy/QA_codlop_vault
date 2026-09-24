---
tc_id: TC-TEAM-003
title: Leave Arabic Name Empty and Verify Profile Uses Job Title Only Per Helper Text
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - arabic-fields
  - helper-text
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| `name_ar` | empty (`""`) |
| `title_ar` | `مهندس الدعم الفني` |
| Helper text | states profile shows job title only when name is empty |

# Preconditions
- Edit form open for existing member.
- Helper text visible under `name_ar`.

# Steps
1. Clear the Arabic name field (`name_ar`) completely.
2. Keep `title_ar=مهندس الدعم الفني`.
3. Save the form.
4. Open the public/profile card for the member and read the displayed heading.

# Expected Result
- Save succeeds (Arabic name is optional).
- Profile card heading shows only `مهندس الدعم الفني`, no blank name line, no `null`/`N/A`.
- Behaviour matches helper text description.
- DB stores `name_ar` as empty/null, `title_ar` unchanged.

# Notes
- Verifies optional-vs-required split: `name_ar` optional, `title_ar` required.
- Check both AR locale card and admin preview.

# Attachments
- Before/after screenshots of form and public card.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة مختصرة" --form "bio_en=bio" \
  --form "linkedin_url=https://linnkedin.com" --form "x_url=https://x.com/codlop" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: success; public card shows title only.
```

---
*Last Updated: 2026-09-24 00:00*
