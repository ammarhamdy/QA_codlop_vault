---
tc_id: TC-TEAM-059
title: Create Minimal Hidden Record With Only Arabic Title Verify Preserved
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - draft-record
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `title_ar` | `مهندس برمجيات` |
| All optional | empty; `photo=;filename=`; `is_visible=0` |

# Preconditions
- Logged in as admin.

# Steps
1. Create a member with only `title_ar`; leave name, bios, URLs, email, image empty.
2. Set "Visible in team page" OFF; save.
3. Confirm absent from the public team page.
4. Reopen the edit form; verify the draft record with `title_ar` is preserved for later completion.

# Expected Result
- Minimal hidden record saves successfully, stays out of public views, and retains `title_ar` for later editing.

# Notes
- Draft/stub workflow coverage.

# Attachments
- Screenshots of saved draft + public page absence.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=0"
# Expect: 302; member hidden publicly but present in admin list with title intact.
```

---
*Last Updated: 2026-09-24 00:00*
