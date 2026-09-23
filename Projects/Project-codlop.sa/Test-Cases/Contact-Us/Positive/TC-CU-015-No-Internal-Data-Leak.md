---
tc_id: TC-CU-015
title: Verify Successful Submission Exposes No Token, Source or Implementation Details
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - positive
  - security
  - info-disclosure
---

# Test Data
| Field | Value |
| ----- | ----- |
| Probe | Response body, headers and success UI after a valid submit |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Capture full response: `curl -i -s` against the endpoint.
2. Grep body+headers for `_token`, `XSRF`, `codlop-session`, file paths, stack traces, SQL.
3. Also inspect the browser success UI and console for the raw token or internal names.

# Expected Result
- No CSRF token value, cookie payloads, server paths (`/home/…`, `/var/www`), exception traces or SQL fragments appear anywhere.
- Success UI shows only the user-facing confirmation message.

# Notes
- The token must exist in the *request* only; echoing it back in responses is the failure condition.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# Header dump (-i) injected into a /tmp copy; scan response for internal-detail leaks (Set-Cookie excluded — normal session handling).
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
SCR="Projects/Project-codlop.sa/Scripts/contect-us.sh"
sed 's|curl -X POST|curl -sS -i -X POST|' "$SCR" > /tmp/tc-cu-015.sh
bash /tmp/tc-cu-015.sh \
  --name "Abdullah Mohammed Al-Harbi" \
  --phone "+966 50 123 4567" \
  --email "abdullah.alharbi@example.com" \
  --project-type "تطبيق جوال" \
  --message "نحتاج تطبيق جوال لحجز مواعيد صالونات الحلاقة الرجالية في بريدة." | tee /tmp/tc-cu-015.out

grep -iv '^set-cookie:' /tmp/tc-cu-015.out > /tmp/tc-cu-015.scan
if grep -Eiq 'xsrf|_token|codlop-session|remember_web|/home/|/var/www|stack trace|SQLSTATE|Whoops|Illuminate\\' /tmp/tc-cu-015.scan; then
  echo "FAIL — internal details leaked:"
  grep -Ein 'xsrf|_token|codlop-session|remember_web|/home/|/var/www|stack trace|SQLSTATE|Whoops|Illuminate\\' /tmp/tc-cu-015.scan || true
else
  echo "CLEAN — no token/session/path/trace markers in headers or body (Set-Cookie excluded)"
fi
# Also eyeball the browser success UI + console after the same submission: no raw token, no internal names.
```

---
*Last Updated: 2026-09-23 13:14*
