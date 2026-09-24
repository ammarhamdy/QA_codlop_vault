---
tc_id: TC-TEAM-050
title: Remove Or Replace Uploaded Image Verify Old Image Gone
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
| Setup | Member with saved image A; replacement image B |

# Preconditions
- Logged in as admin; member with image A saved; image B fixture ready. Record image A's URL.

# Steps
1. Remove image A (delete/clear control) OR upload image B as replacement; save.
2. Verify preview and public card show the new state (placeholder or image B).
3. Request the old image A URL directly; check status.

# Expected Result
- Old image no longer displayed anywhere applicable; direct URL to image A returns 404/gone or is otherwise not publicly served as the member photo.

# Notes
- Covers both remove and replace paths; related to TC-TEAM-012 and TC-TEAM-072.

# Attachments
- Before/after screenshots; HTTP status of old image URL.

# Script
```shell
# After replace via UI, confirm old file no longer the member photo:
curl -s -o /dev/null -w "%{http_code}" "https://test.codlop.sa/storage/<old-image-A-path>"
# Expect: 404 (or redirect away) once replaced/removed.
```

---
*Last Updated: 2026-09-24 00:00*
