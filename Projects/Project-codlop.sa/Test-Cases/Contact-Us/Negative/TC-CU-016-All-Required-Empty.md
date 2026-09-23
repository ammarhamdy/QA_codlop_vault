---
tc_id: TC-CU-016
title: Submit With All Required Fields Empty and Consent Missing
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| name/phone/message | empty strings |
| email | empty (optional, no error expected) |
| consent | parameter absent |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.
- Consent checkbox NOT accepted (param removed).

# Steps
1. Send the runner with all required fields emptied and the consent line removed.
2. In UI: click `إرسال الطلب` on the untouched form.

# Expected Result
- HTTP 422 (or UI submit blocked) with exactly four errors: `name`, `phone`, `message`, `consent`.
- No error is reported for the optional `email`.
- Nothing is stored/sent.

# Notes
- Unchecked HTML checkbox = parameter absent, so the curl variant deletes the consent line (see Notes in TC-CU-025).
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# Runner modification: empty every required field and drop the consent parameter entirely
sed -e 's|^NAME=.*|NAME=""|' -e 's|^PHONE=.*|PHONE=""|' -e 's|^EMAIL=.*|EMAIL=""|' \
    -e 's|^MESSAGE=.*|MESSAGE=""|' -e '/-F "consent=1"/d' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-016.sh
bash /tmp/tc-cu-016.sh
# Expect: HTTP 422; errors keys = name, phone, message, consent only.
```

---
*Last Updated: 2026-09-23 12:15*
