---
tc_id: TC-TEAM-015
title: Turn Visibility Back On Verify Member Reappears With Saved Information
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - visibility
---

# Test Data
| Field | Value |
| ----- | ----- |
| `is_visible` | `1` (switch back ON) |
| Snapshot | data captured in TC-TEAM-014 while hidden |

# Preconditions
- Member currently hidden (`is_visible=0`) with data intact.

# Steps
1. Turn the visibility switch back ON.
2. Save.
3. Open the public team page and locate the member card.
4. Compare card content (name, title, bio excerpt, photo, color, links) against the pre-hide snapshot.

# Expected Result
- Member reappears on the public team page.
- All previously saved information is identical — no defaults restored, no fields blanked, photo and `tint=mint` preserved.

# Notes
- Closes the TC-TEAM-013 → 014 → 015 toggle loop; run in sequence.
- Record reappearance latency if listing is cached.

# Attachments
- Screenshot of reappeared card vs snapshot.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Then: curl -s "https://test.codlop.sa/team" | grep -c "Ahmed"
# Expect: >= 1 with identical card content.
```

---
*Last Updated: 2026-09-24 00:00*
