---
tc_id: TC-CU-025
title: Block Submission Without Privacy/Contact-Processing Consent
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - consent
  - security
---

# Test Data
| Field | Value |
| ----- | ----- |
| consent | checkbox left unchecked / parameter removed |
| Other fields | valid |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Complete everything except consent; click submit.
2. Via curl: remove the `-F "consent=1"` line (and the trailing `\` of the previous `-F` line).

# Expected Result
- Submit blocked with a consent-specific error naming the requirement (PII processing consent).
- HTTP 422 `errors.consent` on API; nothing is stored or emailed.

# Notes
- Unchecked checkbox = field absent from multipart body, which is why the line must be deleted, not emptied.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
cp Projects/Project-codlop.sa/Scripts/contect-us.sh /tmp/tc-cu-025.sh
sed -i '/-F "consent=1"/d' /tmp/tc-cu-025.sh
bash /tmp/tc-cu-025.sh
# Expect: HTTP 422 errors.consent.
```

---
*Last Updated: 2026-09-23 12:24*
