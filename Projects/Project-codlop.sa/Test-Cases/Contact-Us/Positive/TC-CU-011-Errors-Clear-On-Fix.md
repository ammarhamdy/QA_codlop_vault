---
tc_id: TC-CU-011
title: Verify Validation Messages Clear or Update After Correcting Input
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - positive
  - validation
  - ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Trigger | Empty name, invalid phone `123`, invalid email `user@`, missing consent |
| Corrections | `Layla Hassan`, `+966 50 987 6543`, `layla@example.com`, consent ticked |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Submit empty/invalid to produce all error messages.
2. Correct the name field and observe its message.
3. Correct phone, email, and tick consent — after each fix re-check.
4. Submit the corrected form.

# Expected Result
- Each field's error disappears (or updates) as soon as the value becomes valid — no stale messages.
- Errors for untouched invalid fields remain visible.
- Corrected form submits successfully.

# Notes
- The form uses `novalidate`; validation copy is rendered by the site script — verify actual wording against the approved design copy.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# Runner gate patched so an empty --name can actually be sent (missing name is what this test needs),
# plus visible HTTP status in the output. Source runner untouched.
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
SCR="Projects/Project-codlop.sa/Scripts/contect-us.sh"
sed -e 's/\[ -z "\$NAME" \] || //' -e 's|curl -X POST|curl -sS -w " HTTP:%{http_code}" -X POST|' "$SCR" > /tmp/tc-cu-011.sh

# A) invalid first — name empty
bash /tmp/tc-cu-011.sh \
  --name "" \
  --phone "+966 50 987 6543" \
  --email "layla@example.com" \
  --project-type "تطبيق جوال" \
  --message "طلب تجريبي لتأكيد ظهور ثم مسح رسالة خطأ الاسم." | tee /tmp/tc-cu-011a.out
if grep -q '"errors"' /tmp/tc-cu-011a.out && grep -q 'HTTP:422' /tmp/tc-cu-011a.out; then
  echo "A PASS — server returned field errors (errors.name expected)"
else
  echo "A CHECK — inspect /tmp/tc-cu-011a.out (token may be expired, or error shape differs)"
fi

# B) correction — same payload, valid name
bash /tmp/tc-cu-011.sh \
  --name "Layla Hassan" \
  --phone "+966 50 987 6543" \
  --email "layla@example.com" \
  --project-type "تطبيق جوال" \
  --message "طلب تجريبي لتأكيد ظهور ثم مسح رسالة خطأ الاسم." | tee /tmp/tc-cu-011b.out
if grep -q 'HTTP:200' /tmp/tc-cu-011b.out && ! grep -q '"errors"' /tmp/tc-cu-011b.out; then
  echo "B PASS — accepted after the name was corrected"
else
  echo "B CHECK — inspect /tmp/tc-cu-011b.out"
fi
# UI half (manual): trigger each field error in the browser, fix it, confirm the message clears live.
```

---
*Last Updated: 2026-09-23 13:10*
