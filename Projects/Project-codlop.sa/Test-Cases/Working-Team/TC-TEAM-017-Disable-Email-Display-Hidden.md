---
tc_id: TC-TEAM-017
title: Disable Email Display Verify Hidden While Stored Email Unchanged
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-display
---

# Test Data
| Field | Value |
| ----- | ----- |
| `email` | `codlop.sa@mail.com` (stored) |
| Email-display switch | OFF |

# Preconditions
- Email display currently ON (post TC-TEAM-016); email visible publicly.

# Steps
1. Turn the email-display switch OFF.
2. Save.
3. Open the public card and verify the email is NOT shown (nor in page source / `mailto:`).
4. Reopen the edit form and verify the email field still contains `codlop.sa@mail.com`.

# Expected Result
- Email hidden from public card and page source.
- Stored email in the edit form remains `codlop.sa@mail.com` — hiding is display-only, not deletion.

# Notes
- Pair with TC-TEAM-016; run in sequence.
- Check view-source, not just rendered text (email must not leak in hidden DOM).

# Attachments
- Screenshots: switch OFF state, public card without email, edit form with stored email.

# Script
```shell
# Toggle OFF in UI, then verify:
# curl -s "https://test.codlop.sa/team" | grep -c "codlop.sa@mail.com"
# Expect: 0 on public page.
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -o 'codlop.sa@mail.com'
# Expect: still present in admin form (storage intact).
```

---
*Last Updated: 2026-09-24 00:00*
