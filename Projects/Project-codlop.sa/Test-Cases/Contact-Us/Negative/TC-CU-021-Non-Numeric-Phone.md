---
tc_id: TC-CU-021
title: Reject Letters, Unsupported Symbols and Obviously Invalid Numbers in Phone
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - validation
  - phone
---

# Test Data
| Field | Value |
| ----- | ----- |
| Values | `05ABCDE1234` · `+966 50 123 FOUR` · `0012345` · `05-0-123` · `9665O1234567` (letter O) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Enter each invalid value (others valid); submit via UI and curl.

# Expected Result
- Each attempt returns a phone-specific error (422 `errors.phone` / inline 'number format' message).
- No letters-bearing value is normalized into a plausible number.

# Notes
- Include the letter-O vs digit-0 lookalike — classic normalization bypass.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
for V in "05ABCDE1234" "+966 50 123 FOUR" "0012345" "05-0-123" "9665O1234567"; do
  sed "s|^PHONE=.*|PHONE=\"$V\"|" Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-021.sh
  bash /tmp/tc-cu-021.sh
done
# Expect: 5 × HTTP 422 errors.phone.
```

---
*Last Updated: 2026-09-23 12:20*
