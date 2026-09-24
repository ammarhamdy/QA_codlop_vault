---
tc_id: TC-TEAM-053
title: Toggle Team Visibility Rapidly Verify Final State Saved
priority: Medium
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
| `is_visible` | Rapid 1→0→1→0 toggles, ending on a known value |

# Preconditions
- Logged in as admin; member edit form open.

# Steps
1. Toggle "Visible in team page" rapidly several times, ending ON (or OFF — record final).
2. Save once; reopen form and check stored toggle state.
3. Open public team page and confirm presence/absence matches the final saved state.

# Expected Result
- Stored and public states both equal the final toggle position at save time; no inverted or intermediate state.

# Notes
- Debounce/race check for the `is_visible` control.

# Attachments
- Screenshots of final toggle state + public team page.

# Script
```shell
# Save with is_visible=0 then confirm hidden, then is_visible=1 and confirm shown:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team/{id}" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" --form "_method=PUT" \
  --form "title_ar=مهندس برمجيات" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=0"
# Expect: 302; verify hidden, then repeat with is_visible=1 and verify shown.
```

---
*Last Updated: 2026-09-24 00:00*
