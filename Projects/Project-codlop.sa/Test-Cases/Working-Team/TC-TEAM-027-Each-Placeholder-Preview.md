---
tc_id: TC-TEAM-027
title: Select Each Temporary Illustration Verify Placeholder Preview
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - placeholder
  - preview
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Form field | `placeholder` (known value: `pm`; enumerate all options in UI) |
| `photo` | empty (`photo=;filename=`) so placeholder is visible |

# Preconditions
- Logged in as admin; member form open with no real image uploaded.

# Steps
1. Ensure no real image is attached (empty file input).
2. For each available temporary illustration option: select it.
3. After each selection, observe the preview area.
4. Save with the last placeholder and verify the public card uses it.

# Expected Result
- Each illustration shows its corresponding placeholder preview (no blank/broken image).
- Saved public card uses the last selected placeholder.

# Notes
- Enumerate the full option list in the run record; script uses `placeholder=pm` as example.

# Attachments
- Screenshots of each placeholder preview.

# Script
```shell
# Save member with placeholder and no photo:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "tint=mint" --form "bio_ar=سيرة" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; repeat per placeholder value found in UI.
```

---
*Last Updated: 2026-09-24 00:00*
