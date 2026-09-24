---
tc_id: TC-TEAM-005
title: Switch To English Fields Verify Existing Title Biography With LTR Direction
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - english-fields
  - ltr
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| `title_en` | `software engineer` |
| `bio_en` | `software engineer software engineer software engineer software engineer software engineer` |
| Expected dir | `ltr`, `text-align: left` |

# Preconditions
- Member has saved English title and biography (per curl defaults).

# Steps
1. In the edit form, switch to the English language tab/section.
2. Read `title_en` and `bio_en` values.
3. Inspect computed `direction` / `dir` attribute on both inputs.
4. Type a short English suffix, save, reload, verify it persisted.

# Expected Result
- Existing English title and biography are shown unchanged.
- Both fields render left-to-right (`dir="ltr"`, left-aligned), not RTL.
- Edited English text persists after save + reload.

# Notes
- Fails if English fields inherit `dir=rtl` from the Arabic section CSS.
- Check DevTools computed style, not just visual alignment.

# Attachments
- Screenshot of English tab + DevTools direction property.

# Script
```shell
# No file upload; English-only update via same endpoint:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" \
  -H "accept-language: en-GB,en;q=0.9" | grep -Eo '(title_en|bio_en)[^<]{0,120}'
# Expect: existing English values present in the HTML.
```

---
*Last Updated: 2026-09-24 00:00*
