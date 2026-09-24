---
tc_id: TC-TEAM-054
title: Toggle Show Email Without Valid Email Verify No Empty Link
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-visibility
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `email` | empty, then `user@` (invalid) |
| Show-email control | ON in both cases |

# Preconditions
- Logged in as admin; member form open.

# Steps
1. Leave `email` empty, enable "Show email", save; check public profile for any email link.
2. Enter invalid `user@`, keep "Show email" ON, save (if validation permits); check public profile.
3. Record whether an empty/malformed `mailto:` was exposed.

# Expected Result
- No empty or malformed email link exposed publicly; either blocked by validation or email section hidden.

# Notes
- Show-email param name TBD (not in `create-team-member.sh`) — capture from network tab.

# Attachments
- Public-profile source excerpts proving no empty `mailto:`.

# Script
```shell
curl -s "https://test.codlop.sa/team" | grep -io 'mailto:[^"]*' | head -5
# Expect: no bare 'mailto:' / 'mailto:user@' entries for the test member.
```

---
*Last Updated: 2026-09-24 00:00*
