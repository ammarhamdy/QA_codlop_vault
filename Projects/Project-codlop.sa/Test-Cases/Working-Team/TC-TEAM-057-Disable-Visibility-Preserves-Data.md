---
tc_id: TC-TEAM-057
title: Verify Disabling Visibility Deletes No Member Data
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - visibility
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Setup | Fully populated visible member (name, titles, bios, image, contacts) |

# Preconditions
- Logged in as admin; member with complete data exists; baseline values recorded.

# Steps
1. Record all stored field values for the member.
2. Turn OFF "Visible in team page"; save.
3. Reopen the edit form; compare every field against baseline.

# Expected Result
- Hiding removes public display only; name, titles, bios, image, and contacts all intact in the stored record.

# Notes
- Field-level counterpart to TC-TEAM-014 (page-level hidden check).

# Attachments
- Before/after field-value comparison table.

# Script
```shell
# Baseline then hide; diff stored values (adjust {id}):
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -oE '(name_ar|title_ar|bio_ar)[^>]*value="[^"]*"' > /tmp/before.txt
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team/{id}" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" --form "_method=PUT" \
  --form "title_ar=مهندس برمجيات" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=0"
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -oE '(name_ar|title_ar|bio_ar)[^>]*value="[^"]*"' > /tmp/after.txt
diff /tmp/before.txt /tmp/after.txt
# Expect: no diff except is_visible.
```

---
*Last Updated: 2026-09-24 00:00*
