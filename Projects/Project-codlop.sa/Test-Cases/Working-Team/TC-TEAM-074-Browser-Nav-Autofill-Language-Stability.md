---
tc_id: TC-TEAM-074
title: Browser Back Forward Refresh Autofill Keep Arabic English Fields Stable
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - bilingual
  - reliability
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `name_ar` | `احمد` vs `name_en` `Ahmed` (must not swap) |

# Preconditions
- Logged in as admin; bilingual draft entered but unsaved (or saved — test both).

# Steps
1. Fill AR+EN fields distinctly; use browser Back, Forward, Refresh.
2. Trigger form autofill (if offered) and submit-adjacent navigation.
3. After each action, verify AR values still in AR fields and EN in EN fields.

# Expected Result
- No cross-field swapping or language-section value migration after any browser navigation/autofill action.

# Notes
- Fails on any AR↔EN transposition; record exact action that triggers it.

# Attachments
- Before/after field-value table per action.

# Script
```shell
# Manual browser-navigation test — post-check stored separation:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -oE '(name_ar|name_en)[^>]*value="[^"]*"' | head -2
# Expect: احمد in name_ar, Ahmed in name_en (never swapped).
```

---
*Last Updated: 2026-09-24 00:00*
