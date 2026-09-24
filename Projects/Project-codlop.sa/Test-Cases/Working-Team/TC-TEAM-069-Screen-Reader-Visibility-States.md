---
tc_id: TC-TEAM-069
title: Screen Reader Confirms Visibility Toggles State And Purpose
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - accessibility
  - screen-reader
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Controls | "Visible in team page" + "Show email" toggles |

# Preconditions
- Logged in as admin; screen reader enabled (NVDA/VoiceOver); form open.

# Steps
1. Navigate to each toggle via screen reader; record announced label and role.
2. Toggle each ON/OFF; record state announcements.
3. Confirm purpose (what each toggle affects) is communicated without visual context.

# Expected Result
- Both controls expose accessible names, `switch`/`checkbox` roles, and current on/off states; purpose understandable by audio alone.

# Notes
- Fails on unlabeled toggles or silent state changes.

# Attachments
- Screen-reader speech log per control/state.

# Script
```shell
# Static accessibility-name audit:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/create" | grep -ioE '(aria-label="[^"]*"|role="switch"|name="is_visible")[^>]*' | head -10
# Expect: labeled controls with switch semantics (manual SR pass still required).
```

---
*Last Updated: 2026-09-24 00:00*
