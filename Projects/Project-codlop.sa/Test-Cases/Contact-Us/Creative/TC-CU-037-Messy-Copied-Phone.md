---
tc_id: TC-CU-037
title: Paste Phone Copied From Chat App With NBSP, Parentheses and Country-Code Prefix
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - creative
  - phone
  - normalization
---

# Test Data
| Field | Value |
| ----- | ----- |
| Variant A | `+966 50 123 4567` — separators are U+00A0 non-breaking spaces |
| Variant B | `(00966) 50123 4567` — trunk-less with parens |
| Baseline | `+966 50 123 4567` (reference normalization result from TC-CU-004) |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Send each variant via UI + curl.
2. Compare normalization result with the clean +966 baseline.

# Expected Result
- NBSP/parens/`00966` are either normalized to +966501234567 or met with a clear validation message.
- Silently mis-storing a different number is the critical failure mode.

# Notes
- NBSP counts against maxlength=20 — a 16-glyph NBSP string may exceed visual expectations.
- Source: `Test-Data/Phone-NBSP.txt` (copy with invisible chars preserved).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="Maha Khaled"
PHONE="$(cat Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data/Phone-NBSP.txt)"
EMAIL=""
PROJECT_TYPE="تطبيق جوال"
MESSAGE="رسالة صالحة."
# Then repeat with PHONE="(00966) 50123 4567".
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: Normalization to +966501234567, or a clean errors.phone — never a corrupted digit set.
```

---
*Last Updated: 2026-09-23 12:36*
