---
tc_id: TC-CU-044
title: Verify Labels, Errors, Consent and Send Status Announce Meaningfully (AR Locale)
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - creative
  - accessibility
  - screen-reader
---

# Test Data
| Field | Value |
| ----- | ----- |
| AT | NVDA (Firefox) or iOS VoiceOver |
| Locale | AR page + EN (/lang/en) pass |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. With SR on, read through every control top-to-bottom.
2. Trigger validation errors and capture announcements.
3. Submit and listen for status changes.

# Expected Result
- Each input exposes its label (`الاسم بالكامل`, `رقم الجوال`, `البريد الإلكتروني`, `نوع المشروع`, `تفاصيل المشروع`).
- Errors are announced/associated to the field (aria-describedby or live region).
- 'جاري الإرسال…' busy state and the final success are surfaced (aria-live), not visual-only.
- Honeypot is aria-hidden and skipped.

# Notes
- Form has `novalidate` — the custom error render must also be SR-friendly.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — no curl runner execution; assistive-technology session; capture audio notes as evidence.
```

---
*Last Updated: 2026-09-23 12:43*
