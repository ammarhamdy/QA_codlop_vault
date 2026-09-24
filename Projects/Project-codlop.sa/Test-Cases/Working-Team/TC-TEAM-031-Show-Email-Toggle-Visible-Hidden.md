---
tc_id: TC-TEAM-031
title: Enable Show Email Then Disable Verify Visible Then Hidden
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-visibility
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `email` | `codlop.sa@mail.com` |

# Preconditions
- Logged in as admin; member with stored valid email exists.

# Steps
1. Enable "Show email"; save; open the public team profile and verify the email is visible.
2. Disable "Show email"; save; reopen the public profile and verify the email is hidden again.
3. Reopen the edit form and confirm the stored email value is unchanged.

# Expected Result
- Email visible while enabled, hidden after disabling; stored email never cleared by the toggle.

# Notes
- Full cycle combining TC-TEAM-016 and TC-TEAM-017 into one auditable flow.

# Attachments
- Screenshots of public profile in both states.

# Script
```shell
# UI-driven toggle (param name TBD — capture from network tab); verify via public view:
# 1) enable + save -> public card contains codlop.sa@mail.com
# 2) disable + save -> public card no longer contains it, edit form still shows stored value.
echo "toggle via UI; verify with: curl -s https://test.codlop.sa/team | grep -c 'codlop.sa@mail.com'"
```

---
*Last Updated: 2026-09-24 00:00*
