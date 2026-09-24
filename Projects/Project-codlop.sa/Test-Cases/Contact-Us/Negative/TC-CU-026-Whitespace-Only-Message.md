---
tc_id: TC-CU-026
title: Treat Newline/Whitespace-Only Project Details as Empty
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - validation
  - message
  - whitespace
---

# Test Data
| Field | Value |
| ----- | ----- |
| message | `\n\n \n \t   \n` (line breaks, spaces and a tab only) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Paste blank lines into the textarea; fill everything else; submit.
2. Repeat via curl.

# Expected Result
- Message is required after trimming: HTTP 422 `errors.message`.
- No lead with an empty description can be created.

# Notes
- Distinct from TC-CU-018 (multi-field whitespace); this isolates the message-only pattern.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="Tariq Fahad"
PHONE="+966 50 111 2222"
EMAIL=""
PROJECT_TYPE="موقع تعريفي"
MESSAGE=$'\n\n \n \t   \n'
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422 errors.message.
```

---
*Last Updated: 2026-09-23 12:25*
