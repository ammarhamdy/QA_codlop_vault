---
tc_id: TC-TEAM-071
title: Conflicting Edits In Two Sessions Behave Predictably No Silent Overwrite
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - concurrency
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Session A edit | `tint=<color-A>`, `is_visible=1` |
| Session B edit | `tint=<color-B>`, `is_visible=0` (stale form loaded before A saved) |

# Preconditions
- Logged in as admin in two sessions; same member edit form loaded in both.

# Steps
1. In session A: change color + visibility; save.
2. In session B (stale): change color + visibility differently; save.
3. Reopen the record; determine winner and whether any warning/version conflict appeared.

# Expected Result
- Behavior predictable and documented: either last-write-wins explicitly, conflict warning, or merge — silent partial overwrite (color from A + visibility from B) fails this case.

# Notes
- Record actual concurrency semantics; raise a requirement gap if undocumented.

# Attachments
- Timeline of both saves + final stored state.

# Script
```shell
# Sequential conflicting updates (adjust {id}; second save uses stale baseline):
curl -s -o /dev/null -w "A:%{http_code}\n" --location --request POST "https://test.codlop.sa/admin/team/{id}" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" --form "_method=PUT" \
  --form "title_ar=مهندس برمجيات" --form "tint=mint" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
curl -s -o /dev/null -w "B:%{http_code}\n" --location --request POST "https://test.codlop.sa/admin/team/{id}" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" --form "_method=PUT" \
  --form "title_ar=مهندس برمجيات" --form "tint=cyan" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=0"
# Expect: document which write won and whether any conflict signal appeared.
```

---
*Last Updated: 2026-09-24 00:00*
