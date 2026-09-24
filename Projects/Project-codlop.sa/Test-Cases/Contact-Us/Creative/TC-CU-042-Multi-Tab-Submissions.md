---
tc_id: TC-CU-042
title: Complete and Submit Different Data in Two Tabs and Verify Isolated Requests
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - creative
  - concurrency
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tab A | `Abdullah Al-Harbi` / `0501234567` / `تطبيق جوال` |
| Tab B | `Noura Al-Shammari` / `0559876543` / `متجر إلكتروني` |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Open two tabs to the form; fill each with its distinct data.
2. Submit Tab A, then Tab B.

# Expected Result
- Both submissions succeed; each lead carries its own tab's data — no cross-tab bleed of names/numbers or CSRF reuse failures.
- Session token refresh (if any) doesn't corrupt Tab B's pending draft.

# Notes
- Token is per-session, shared by tabs — confirm both POSTs validate (contrast TC-CU-050 single-token expiry).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
sed -e 's|^NAME=.*|NAME="Abdullah Al-Harbi"|' -e 's|^PHONE=.*|PHONE="0501234567"|' -e 's|^PROJECT_TYPE=.*|PROJECT_TYPE="تطبيق جوال"|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-042a.sh
sed -e 's|^NAME=.*|NAME="Noura Al-Shammari"|' -e 's|^PHONE=.*|PHONE="0559876543"|' -e 's|^PROJECT_TYPE=.*|PROJECT_TYPE="متجر إلكتروني"|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-042b.sh
bash /tmp/tc-cu-042a.sh & bash /tmp/tc-cu-042b.sh & wait
# Expect: 2 × HTTP 200; two distinct leads.
```

---
*Last Updated: 2026-09-23 12:41*
