---
tc_id: TC-TEAM-063
title: Select Dark Card Color Verify Contrast Remains Readable
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
| `tint` | Darkest available option (enumerate; record token) |

# Preconditions
- Logged in as admin.

# Steps
1. Select the darkest card color; save.
2. Open the public card; inspect name, title, bio, and links against the dark background.
3. Check with default text color (no custom text override assumed).

# Expected Result
- All text/links remain readable (adequate contrast); no dark-on-dark content.

# Notes
- Accessibility-adjacent; note any auto-contrast behavior as a finding.

# Attachments
- Screenshot of dark card.

# Script
```shell
# Manual contrast check — save path only:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" --form "tint=<darkest-token>" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; verify readability visually (contrast audit is manual).
```

---
*Last Updated: 2026-09-24 00:00*
