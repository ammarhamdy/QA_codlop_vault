---
tc_id: TC-TEAM-025
title: Verify Default Card Color Is Cyan Without Custom Selection
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - card-color
  - default-value
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `tint` | not set (default expected: `cyan`) |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. Open a new member form without touching the color control.
2. Record the pre-selected/default color shown.
3. Save the member with required fields only (`title_ar` + optional `name_ar`).
4. Open the public team card and record its color.

# Expected Result
- Default card color is cyan in both the untouched form control and the saved public card.

# Notes
- If implementation uses a different default token, update expected value and linked requirement.

# Attachments
- Screenshots of untouched color control and resulting card.

# Script
```shell
# Create member without tint field to trigger server default:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "bio_ar=سيرة" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; stored tint should resolve to cyan default.
```

---
*Last Updated: 2026-09-24 00:00*
