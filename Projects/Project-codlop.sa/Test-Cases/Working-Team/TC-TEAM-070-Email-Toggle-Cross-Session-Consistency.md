---
tc_id: TC-TEAM-070
title: Email Toggle Change In Second Session Reflects Without Stale Data
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-visibility
  - concurrency
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `email` | `codlop.sa@mail.com` |
| Sessions | Browser A (show-email ON) + Browser B (disable show-email) |

# Preconditions
- Logged in as admin in two sessions/browsers; member with show-email ON and visible email.

# Steps
1. In session A: enable show-email, save; confirm email visible publicly.
2. In session B: disable show-email, save.
3. Re-check the public view (fresh fetch, cache bypassed) and confirm it reflects OFF with no stale email exposure.

# Expected Result
- Public view converges to the latest setting (hidden); no stale cached page keeps exposing the email beyond normal cache TTL (record TTL if observed).

# Notes
- Cross-session consistency; complements TC-TEAM-031 (single-session cycle).

# Attachments
- Timestamped screenshots per session + cache-bypassed verification.

# Script
```shell
curl -s -H "Cache-Control: no-cache" "https://test.codlop.sa/team" | grep -ci 'codlop.sa@mail.com' || true
# Expect: 0 after session B disables (allow/document cache TTL if briefly 1).
```

---
*Last Updated: 2026-09-24 00:00*
