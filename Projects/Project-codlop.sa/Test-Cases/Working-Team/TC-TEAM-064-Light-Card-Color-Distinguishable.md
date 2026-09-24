---
tc_id: TC-TEAM-064
title: Select Light Card Color Verify Labels Title Links Distinguishable
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - card-color
  - contrast
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `tint` | Lightest available option (enumerate; record token) |

# Preconditions
- Logged in as admin.

# Steps
1. Select the lightest card color; save.
2. Open the public card; verify labels, title, and links are visually distinguishable from the background.
3. Hover/focus links to confirm visible states.

# Expected Result
- No washed-out content; labels, title, and links distinguishable with visible interactive states.

# Notes
- Mirror of TC-TEAM-063 for the light end of the palette.

# Attachments
- Screenshot of light card.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" --form "tint=<lightest-token>" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; verify distinguishability visually.
```

---
*Last Updated: 2026-09-24 00:00*
