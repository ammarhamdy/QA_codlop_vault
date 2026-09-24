---
tc_id: TC-TEAM-072
title: Remove Real Image Later Verify Placeholder Restored Automatically
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - placeholder
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Setup | Member saved with real image + `placeholder=pm` selected |

# Preconditions
- Logged in as admin; member with both real image and placeholder selection exists.

# Steps
1. Confirm public card currently shows the real image (TC-TEAM-029 state).
2. Edit; remove the real image (delete/clear control); save keeping `placeholder=pm`.
3. Check preview and public card.

# Expected Result
- Selected placeholder restored automatically; no broken image, no empty avatar.

# Notes
- Removal counterpart to TC-TEAM-029 (precedence) and TC-TEAM-012 (delete shows placeholder).

# Attachments
- Before/after screenshots.

# Script
```shell
# Remove photo while keeping placeholder (adjust {id}; confirm delete-param name in UI):
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team/{id}" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" --form "_method=PUT" \
  --form "title_ar=مهندس برمجيات" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; public card falls back to placeholder pm.
```

---
*Last Updated: 2026-09-24 00:00*
