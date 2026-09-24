---
tc_id: TC-TEAM-044
title: Upload Unsupported Image Format Verify Rejected When Unsupported
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `photo` | SVG, TIFF, BMP fixtures (one at a time) |

# Preconditions
- Logged in as admin; SVG/TIFF/BMP fixtures prepared.

# Steps
1. Upload SVG; submit; record accept/reject + message.
2. Repeat for TIFF and BMP.
3. If any is accepted, verify public card renders it safely (SVG must not execute scripts).

# Expected Result
- Formats outside the supported set (JPG/WebP/PNG per TC-TEAM-009/010) rejected with a clear message when unsupported; SVG never stored as executable markup.

# Notes
- Record the actual supported list in the run — it defines pass/fail for this case.

# Attachments
- Screenshots of per-format results.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/test.svg;type=image/svg+xml" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: validation error when SVG unsupported. Repeat for .tiff / .bmp.
```

---
*Last Updated: 2026-09-24 00:00*
