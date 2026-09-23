---
tc_id: TC-CU-027
title: Reject Requests With Removed/Altered Hidden Metadata Despite Valid Visible Fields
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - security
  - server-validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Variant A | `form="quote"` (unsupported form id) |
| Variant B | `source_path` parameter removed |
| Variant C | `name` parameter dropped from the multipart body entirely |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Send variant A/B/C, each with otherwise-valid visible fields.

# Expected Result
- Server validates every part of the request instead of trusting the client: 422/400 per variant, no lead stored.
- A wrong `form` value must not silently process as a contact lead.

# Notes
- This is the 'client-side validation is cosmetic' proof: same result in UI-with-JS-off (see TC-CU-049).
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
sed 's|^FORM_TYPE=.*|FORM_TYPE="quote"|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-027a.sh && bash /tmp/tc-cu-027a.sh
grep -v 'source_path' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-027b.sh && bash /tmp/tc-cu-027b.sh
grep -v -- '-F "name=' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-027c.sh && bash /tmp/tc-cu-027c.sh
# Expect: 3 × HTTP 422/400; nothing stored.
```

---
*Last Updated: 2026-09-23 12:26*
