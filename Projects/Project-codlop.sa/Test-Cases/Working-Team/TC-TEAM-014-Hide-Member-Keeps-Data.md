---
tc_id: TC-TEAM-014
title: Turn Off Team Page Visibility Verify Member Hidden Without Data Loss
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
| `is_visible` | `0` (switch OFF) |
| Snapshot | full profile data captured before toggle (names, titles, bios, links, email, tint, photo URL) |

# Preconditions
- Member visible per TC-TEAM-013; snapshot recorded.

# Steps
1. In the edit form, turn the team-page visibility switch OFF.
2. Save.
3. Open the public team page (incognito) and verify the member card is absent.
4. Reopen the edit form and compare every field against the snapshot.

# Expected Result
- Member disappears from the public team page (not merely greyed out; no direct-card HTML).
- All profile data in the edit form is intact — nothing cleared, photo/URLs/email/tint unchanged.
- Direct profile URL (if any) follows hidden-member policy (record behaviour: 404 vs hidden).

# Notes
- Distinguishes visibility (presentation flag) from deletion.
- Allow cache TTL before declaring fail on the public page.

# Attachments
- Screenshots: switch OFF state, public page without card, edit form showing intact data.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=0"
# Then: curl -s "https://test.codlop.sa/team" | grep -c "Ahmed"
# Expect: 0 (hidden), while re-GET of edit page still shows all data.
```

---
*Last Updated: 2026-09-24 00:00*
