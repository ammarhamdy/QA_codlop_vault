---
tc_id: TC-CU-049
title: Submit With JavaScript Disabled; Server-Side Validation Must Still Protect the Endpoint
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - creative
  - security
  - graceful-degradation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Condition | Chrome 'JavaScript blocked' site setting (or block `build/assets/site-*.js` in DevTools) |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Disable JS, reload; note the form still renders with hidden `_token`, honeypot, `form`/`source_path`.
2. Try an empty submit (native `required` may or may not fire due to novalidate — observe).
3. Force a bad submit; then hit the endpoint via curl with invalid values.

# Expected Result
- Without JS the browser may allow the POST — the server must independently reject invalid/empty payloads (422) and still accept valid ones (200).
- Hidden metadata (`_token`, `form`, `source_path`) survives in the no-JS form post, proving the flow is server-validated, not JS-gated.

# Notes
- This is the definitive 'client validation is advisory' test.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# 1) Browser with JS blocked: submit empty, then valid — record responses in a .har
# 2) Server-side proof via the runner with tampered payload:
sed 's|^MESSAGE=.*|MESSAGE=""|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-049.sh && bash /tmp/tc-cu-049.sh
# Expect: No-JS empty submit ⇒ 422; tampered ⇒ 422; valid no-JS submit ⇒ success.
```

---
*Last Updated: 2026-09-23 12:48*
