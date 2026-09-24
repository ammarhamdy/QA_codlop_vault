---
tc_id: TC-TEAM-075
title: Bypass Client Validation Verify Server Still Protects Fields And Files
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - security
  - validation
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Bypass | Devtools-removed `required`/patterns OR direct curl without valid values |

# Preconditions
- Logged in as admin; valid session cookies available.

# Steps
1. Disable browser validation (or strip `required`/pattern attributes) and submit empty `title_ar`, bad email, bad URLs.
2. Repeat each attack as a direct curl POST bypassing the UI entirely.
3. Attempt oversized/non-image `photo` upload via curl.

# Expected Result
- Server-side validation rejects every invalid payload (required, URL, email, file rules) — nothing invalid persisted regardless of client bypass.

# Notes
- Core trust-boundary case; maps 1:1 to TC-TEAM-035/037/038/039/043 server checks via curl.

# Attachments
- Rejection evidence per payload (status + error excerpt).

# Script
```shell
echo "not an image" > /tmp/evil.txt
curl -s -o /dev/null -w "empty-title:%{http_code}\n" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=" --form "email=user@" \
  --form "linkedin_url=plain text" --form "x_url=just text" \
  --form "photo=@/tmp/evil.txt;type=text/plain" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: non-success with field errors for title_ar, email, urls, photo (never silent store).
```

---
*Last Updated: 2026-09-24 00:00*
