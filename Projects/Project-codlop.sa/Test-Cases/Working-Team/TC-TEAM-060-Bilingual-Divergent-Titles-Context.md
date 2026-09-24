---
tc_id: TC-TEAM-060
title: Bilingual Divergent Titles Show Correct Version Per Language Context
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - bilingual
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `title_ar` | `مهندس الدعم الفني` (deliberately different) |
| `title_en` | `Customer Success Lead` (deliberately different) |

# Preconditions
- Logged in as admin; public team view reachable in both languages.

# Steps
1. Save a member whose AR and EN titles differ in wording (not translations).
2. Switch the application language to Arabic; record the shown title.
3. Switch to English; record the shown title.

# Expected Result
- Each context shows its own version exactly; no fallback mixing or cross-display.

# Notes
- Divergence (not translation) proves per-locale resolution vs single-field fallback.

# Attachments
- Screenshots of both language contexts.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=Customer Success Lead" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; verify per-locale titles in public views.
```

---
*Last Updated: 2026-09-24 00:00*
