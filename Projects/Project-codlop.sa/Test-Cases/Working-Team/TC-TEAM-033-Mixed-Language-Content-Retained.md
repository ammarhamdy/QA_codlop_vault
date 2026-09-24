---
tc_id: TC-TEAM-033
title: Verify Mixed Arabic Latin Numbers Punctuation Retained Without Conversion
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - i18n
  - data-integrity
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `name_ar` | `أحمد Ali 123` |
| `title_ar` | `مهندس Software 456، نسخة` |
| `bio_ar` | `سطر 1: test، 50% — "اقتباس" (توضيح)` |

# Preconditions
- Logged in as admin; form open.

# Steps
1. Enter mixed Arabic + Latin + digits + punctuation in `name_ar`, `title_ar`, `bio_ar`.
2. Save; reopen the form and open the public card.
3. Compare stored vs displayed values character by character.

# Expected Result
- All scripts, digits, and punctuation retained exactly; no transliteration, digit reshaping, or punctuation swapping.

# Notes
- Watch for Arabic-Indic digit conversion (`123` → `١٢٣`) — record actual behavior as pass/fail per spec.

# Attachments
- Screenshots of editor and public card mixed content.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=أحمد Ali 123" --form "name_en=Ahmed Ali 123" \
  --form "title_ar=مهندس Software 456، نسخة" --form "title_en=Software Engineer 456" \
  --form "tint=mint" --form "bio_ar=سطر 1: test، 50% — اقتباس" --form "bio_en=Line 1: test, 50%" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; reopen and diff every character.
```

---
*Last Updated: 2026-09-24 00:00*
