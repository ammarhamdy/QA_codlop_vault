---
tc_id: TC-TEAM-028
title: Verify Selected Placeholder Used When No Real Image Uploaded
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - placeholder
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `placeholder` | `pm` |
| `photo` | empty (`photo=;filename=`) |

# Preconditions
- Logged in as admin; no image file attached.

# Steps
1. Select a temporary illustration (e.g. `pm`) with empty photo input.
2. Save the member.
3. Open the public team card.

# Expected Result
- Public card displays the selected temporary illustration, not a broken image or empty avatar.

# Notes
- Companion to TC-TEAM-027 (preview) and TC-TEAM-029 (precedence).

# Attachments
- Screenshot of public card with placeholder.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "tint=mint" --form "bio_ar=سيرة" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; public card renders placeholder pm.
```

---
*Last Updated: 2026-09-24 00:00*
