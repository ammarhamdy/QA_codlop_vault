---
tc_id: TC-TEAM-052
title: Submit With Invalid Hidden Language Field Verify Guided Correction
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - i18n
  - validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Setup | Invalid value in non-visible language tab (e.g. bad email while viewing Arabic section) |

# Preconditions
- Logged in as admin; form with language tabs/sections open.

# Steps
1. While viewing the Arabic section, set an invalid value in the English section (e.g. `email=user@` or bad `x_url`) without switching to it.
2. Submit; observe how the app surfaces the error.
3. Confirm the user is directed to the offending field (tab auto-switch, anchor scroll, highlighted section).

# Expected Result
- Submit does not silently fail; user is visibly guided to the hidden invalid field requiring correction.

# Notes
- Fails if the error summary points nowhere or the tab stays on the wrong section.

# Attachments
- Screenshots of error guidance + focused field.

# Script
```shell
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "email=user@" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1" | grep -io 'email[^<]*' | head -2
# Expect: email validation error even though defect was outside the visible section.
```

---
*Last Updated: 2026-09-24 00:00*
