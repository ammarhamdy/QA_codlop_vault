---
tc_id: TC-TEAM-002
title: Verify Required Arabic Job Title Displayed As مهندس الدعم الفني
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - arabic-fields
  - required-field
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Field | `title_ar` |
| Expected value | `مهندس الدعم الفني` |
| Required marker | `required` attribute / `*` indicator |

# Preconditions
- Same as TC-TEAM-001; member with `title_ar=مهندس الدعم الفني` exists.

# Steps
1. Open the member edit form.
2. Locate the Arabic job title field (`title_ar`).
3. Verify the displayed value equals `مهندس الدعم الفني` exactly.
4. Verify the field is marked required (HTML `required`, asterisk, validation message on empty submit).

# Expected Result
- Value is exactly `مهندس الدعم الفني` — no extra spaces, correct spelling.
- Field is flagged required; clearing it and saving triggers validation (does not silently accept empty).

# Notes
- Distinguishes from `مهندس برمجيات` used in create curl example — this case pins the seeded required value.
- RTL input direction must be `rtl`.

# Attachments
- Screenshot of `title_ar` field with required marker.

# Script
```shell
# Negative check: title_ar empty must fail validation
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: redirect back with validation error for title_ar (not 2xx success / not stored).
```

---
*Last Updated: 2026-09-24 00:00*
