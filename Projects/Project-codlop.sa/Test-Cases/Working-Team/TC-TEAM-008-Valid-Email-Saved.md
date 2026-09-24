---
tc_id: TC-TEAM-008
title: Enter Valid Email Address and Verify It Can Be Saved
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-field
---

# Test Data
| Field | Value |
| ----- | ----- |
| `email` | `codlop.sa@mail.com` |

# Preconditions
- Edit form open.

# Steps
1. Enter `codlop.sa@mail.com` in the email field.
2. Save.
3. Reload and verify the email field still shows `codlop.sa@mail.com`.
4. Verify no validation error appears.

# Expected Result
- Valid email accepted and stored exactly (lowercase preserved, no trimming issues).
- Value persists after reload.

# Notes
- Display on the public page is governed by the email-display switch (TC-TEAM-016/017) — this case covers storage only.
- Invalid-format rejection is out of scope.

# Attachments
- Screenshot of email field after reload.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "linkedin_url=https://linnkedin.com" --form "x_url=https://x.com/codlop" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: success; stored email equals codlop.sa@mail.com.
```

---
*Last Updated: 2026-09-24 00:00*
