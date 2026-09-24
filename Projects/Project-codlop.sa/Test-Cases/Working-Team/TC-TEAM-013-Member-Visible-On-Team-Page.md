---
tc_id: TC-TEAM-013
title: Verify Member Initially Visible On Team Page
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - visibility
  - smoke
---

# Test Data
| Field | Value |
| ----- | ----- |
| `is_visible` | `1` |
| Public page | team page (record exact URL, e.g. `/team`) |

# Preconditions
- Member saved with `is_visible=1`.
- Public team page accessible (logged-out/incognito check).

# Steps
1. Ensure the member record has visibility ON (`is_visible=1`).
2. Open the public team page in an incognito window.
3. Search for the member card (by Arabic or English name/title).

# Expected Result
- Member card is present on the public team page with saved name, title, photo/placeholder, and card color.
- Order/position follows page rules (record position).

# Notes
- Baseline for TC-TEAM-014/015 toggle pair; run first.
- Clear page cache if the CMS caches the team listing.

# Attachments
- Screenshot of public team page with member card highlighted.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Then (unauthenticated): curl -s "https://test.codlop.sa/team" | grep -c "Ahmed"
# Expect: count >= 1 (member rendered).
```

---
*Last Updated: 2026-09-24 00:00*
