---
tc_id: TC-TEAM-019
title: Verify Card Color Visibility Email Text Image Persist After Navigation
priority: High
status:
type: Regression
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - persistence
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Snapshot | `tint=mint`, `is_visible=1`, email-display ON/OFF (record), `name_ar=احمد`, `title_ar`, `bio_ar`, `name_en/title_en/bio_en`, `linkedin_url=https://linnkedin.com`, `x_url=https://x.com/codlop`, `email=codlop.sa@mail.com`, photo URL/placeholder `pm` |

# Preconditions
- Member saved with a known full snapshot (run TC-TEAM-004 through TC-TEAM-010 first or set all fields fresh).

# Steps
1. Record the full snapshot (screenshot + field dump).
2. Save the form.
3. Navigate away (e.g. to `/admin/team` list, then to another admin section).
4. Return to the member edit page (via list, not browser-back).
5. Compare every field, switch state, selected `tint`, and preview image against the snapshot.
6. Hard-refresh once and re-verify.

# Expected Result
- Zero drift: card color, visibility switch, email-display switch, all AR/EN text fields, social URLs, email, and image/placeholder choice are identical after navigation + return and after hard refresh.
- No field resets to default; no switch flips; photo unchanged.

# Notes
- End-to-end consistency gate; run last in the Working-Team suite.
- If any field drifts, bisect with its atomic case (TC-TEAM-004–008, 011).

# Attachments
- Snapshot vs returned-state screenshots; field dump diff.

# Script
```shell
# Capture baseline then re-fetch after navigation-away cycle:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" -o /tmp/team-before.html
# ... navigate away and return in the browser, save again if needed ...
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" -o /tmp/team-after.html
diff /tmp/team-before.html /tmp/team-after.html
# Expect: no diff in tint/is_visible/email/photo/URL/text field values.
```

---
*Last Updated: 2026-09-24 00:00*
