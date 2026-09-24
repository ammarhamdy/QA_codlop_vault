---
tc_id: TC-CU-028
title: Reject Manipulated or Expired Antiforgery Token Safely
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - security
  - csrf
---

# Test Data
| Field | Value |
| ----- | ----- |
| _token | `invalidtoken00000000000000000000000000` (40 chars, wrong) |
| Other fields | valid |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Replace CSRF_TOKEN in Script §2 with a garbage value.
2. Submit via curl.
3. Restore a valid token and re-run to prove the failure was token-specific.

# Expected Result
- HTTP 419 (Page Expired) or equivalent rejection — request never processed.
- Response is a safe generic page-expired error: no token echo, no stack trace.
- Valid-token re-run succeeds afterwards (no session poisoning).

# Notes
- Expired-token UX path is TC-CU-050; this case is the raw API rejection.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
sed 's|^CSRF_TOKEN=.*|CSRF_TOKEN="invalidtoken00000000000000000000000000"|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-028.sh
bash /tmp/tc-cu-028.sh
# Expect: HTTP 419; body free of internals.
```

---
*Last Updated: 2026-09-23 12:27*
