---
tc_id: TC-TEAM-058
title: Verify Private Email Hidden In All Public Views Including Cached
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-visibility
  - privacy
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `email` | `codlop.sa@mail.com` (stored, show-email OFF) |

# Preconditions
- Logged in as admin; member with stored email and show-email OFF.

# Steps
1. With show-email OFF, check: public team list, member profile/card, mobile viewport, and page source for the email string.
2. Force a fresh fetch bypassing cache; repeat the checks.
3. Record any exposure point.

# Expected Result
- Email hidden in every public surface — list, profile, mobile, HTML source, and cached-looking views. Any leak fails this case.

# Notes
- Privacy counterpart to TC-TEAM-030/031; include view-source grep evidence.

# Attachments
- Source-grep outputs + screenshots of each surface.

# Script
```shell
for URL in "https://test.codlop.sa/team" "https://test.codlop.sa/team/{slug}"; do
echo "== $URL"
curl -s -H "Cache-Control: no-cache" "$URL" | grep -ci 'codlop.sa@mail.com' || true
done
# Expect: 0 matches in all public views while show-email is OFF.
```

---
*Last Updated: 2026-09-24 00:00*
