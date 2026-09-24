---
tc_id: TC-TEAM-036
title: Enter Spaces Only In Arabic Job Title Verify Treated As Empty
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - required-field
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `title_ar` | `"   "` (spaces only), plus Arabic spaces variant `"   "` |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. Enter only spaces in `title_ar` (regular spaces; repeat with Arabic-Indic/nbsp if supported).
2. Submit and observe validation.

# Expected Result
- Treated as empty: same validation error as TC-TEAM-035; nothing saved.

# Notes
- Whitespace-trim check; backend must trim before required validation.

# Attachments
- Screenshot of validation message for spaces-only input.

# Script
```shell
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=   " \
  --form "tint=mint" --form "bio_ar=سيرة" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1" | grep -io 'title_ar[^<]*' | head -3
# Expect: validation error mentioning title_ar.
```

---
*Last Updated: 2026-09-24 00:00*
