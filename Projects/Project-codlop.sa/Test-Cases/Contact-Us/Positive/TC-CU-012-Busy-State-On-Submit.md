---
tc_id: TC-CU-012
title: Verify Busy Indicator and Duplicate-Submit Prevention While Sending
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - positive
  - debounce
  - ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Busy copy | `جاري الإرسال…` (submit button `data-busy` attribute) |
| Condition | Throttle DevTools network to Slow 3G |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Fill a valid submission; throttle to Slow 3G.
2. Click `إرسال الطلب`, then immediately click repeatedly and press Enter several times.

# Expected Result
- Button switches to `جاري الإرسال…` and is disabled/non-interactive during the request.
- Exactly ONE POST /contact-submit appears in the Network tab.
- After response, button returns to `إرسال الطلب`.

# Notes
- Debounce/busy lock is a security requirement (duplicate dispatch prevention).
- Server-side duplicate policy is covered by TC-CU-047.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# DOM pre-check: the busy-indicator hooks the case depends on (read-only GET); double-click walk is manual.
curl -sS https://test.codlop.sa/ -o /tmp/tc-cu-012.html
python3 - <<'PY'
import re
h = open("/tmp/tc-cu-012.html", encoding="utf-8").read()
assert re.search(r'<form[^>]*data-busy', h), "form missing data-busy hook"
btn = re.search(r'<button[^>]*type="submit"[^>]*>', h)
assert btn and "data-busy=" in btn.group(0), "submit button missing data-busy copy"
copy = re.search(r'data-busy="([^"]+)"', btn.group(0)).group(1)
print("OK — busy copy on submit button:", copy)
print("Manual: throttle Slow-3G, click once + mash Enter -> Network must show exactly 1 POST /contact-submit, button shows the busy copy meanwhile.")
PY
```

---
*Last Updated: 2026-09-23 13:11*
