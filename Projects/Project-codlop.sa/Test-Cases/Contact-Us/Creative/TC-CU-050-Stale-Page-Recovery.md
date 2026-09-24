---
tc_id: TC-CU-050
title: Submit From a Long-Open Page After Token/Session Expiry and Verify Safe Recovery
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - creative
  - session
  - csrf
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| Setup | Leave the filled form open past token TTL (or DevTools → delete `XSRF-TOKEN`/`codlop-session` cookies) |
| Payload | valid data typed before expiry |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Fill the form completely, then let the session expire (or clear the session cookies — keep the page open).
2. Click submit on the stale page.
3. Observe error and data state; refresh to recover and resubmit.

# Expected Result
- Request is refused safely (page-expired handling — 419 path): user gets an actionable message in AR/EN, not a generic 500 and no token/session internals exposed.
- Recovery path exists: after refresh/re-entry the submission succeeds; ideally entered data is preserved or the loss is communicated explicitly.

# Notes
- Pairs with TC-CU-028 (API-level 419); here the UX recovery is under test.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# Simulate staleness at API level (drop the session cookies, keep §2 token):
sed -e 's|^COOKIE_STRING=.*|COOKIE_STRING="XSRF-TOKEN=stale000"|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-050.sh
bash /tmp/tc-cu-050.sh
# Expect: HTTP 419 / auth-rejection handled; browser-side recovery verified separately.
```

---
*Last Updated: 2026-09-23 12:49*
