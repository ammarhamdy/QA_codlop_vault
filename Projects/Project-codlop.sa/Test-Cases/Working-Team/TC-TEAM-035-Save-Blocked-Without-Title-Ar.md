---
tc_id: TC-TEAM-035
title: Attempt Save Without Arabic Job Title Verify Blocked
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
| `title_ar` | empty (omitted) |
| `name_ar` | `احمد` |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. Fill optional fields (Arabic name, English fields, email) but leave `title_ar` empty.
2. Submit the form.
3. Observe validation and check whether any member record was created.

# Expected Result
- Save blocked with a clear validation message on `title_ar`; no member record created.

# Notes
- Mandatory-field counterpart to TC-TEAM-002; also run TC-TEAM-036 (spaces-only).

# Attachments
- Screenshot of validation message.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: redirect back with title_ar validation error (not 302 success to index / not stored).
```

---
*Last Updated: 2026-09-24 00:00*
