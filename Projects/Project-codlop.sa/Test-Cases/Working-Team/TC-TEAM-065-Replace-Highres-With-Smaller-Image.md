---
tc_id: TC-TEAM-065
title: Replace Highres Image With Smaller Valid Image Verify Latest Only
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Image A | High-resolution square (e.g. 1600×1600) |
| Image B | Smaller valid square (e.g. 800×800) |

# Preconditions
- Logged in as admin; both fixtures prepared.

# Steps
1. Create member with image A; save; record preview/public rendering.
2. Edit same member; replace with image B; save.
3. Verify preview + public profile use only image B; confirm image A retired (see TC-TEAM-050 check).

# Expected Result
- Only the latest image displayed/stored; no A/B compositing or stale caching in preview.

# Notes
- Replacement-path stress; watch for CDN/browser cache masking — use cache-busted fetch.

# Attachments
- Before/after screenshots; old-URL status.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team/{id}" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" --form "_method=PUT" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/imageB-800.jpg;type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; public card shows image B only.
```

---
*Last Updated: 2026-09-24 00:00*
