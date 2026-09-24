---
tc_id: TC-TEAM-067
title: Open Form On Mobile Screen Verify Usable Without Horizontal Scroll
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - responsive
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Viewport | 360×800 (mobile), device emulation |

# Preconditions
- Logged in as admin; mobile emulation enabled.

# Steps
1. Open the member form at mobile width.
2. Exercise: color picker, file upload, long `bio_ar`/`bio_en` fields, both toggles.
3. Attempt a full save; check for horizontal scrolling at each step.

# Expected Result
- All controls usable at mobile width; no horizontal scrolling required; save succeeds.

# Notes
- Responsive pass; record any control that overflows as a defect.

# Attachments
- Mobile screenshots per control + save confirmation.

# Script
```shell
# Manual responsive test — no curl equivalent.
# Save path sanity (same payload, mobile UA):
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -A "Mozilla/5.0 (Linux; Android 14; Pixel 7)" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302 (server accepts mobile-originated payload).
```

---
*Last Updated: 2026-09-24 00:00*
