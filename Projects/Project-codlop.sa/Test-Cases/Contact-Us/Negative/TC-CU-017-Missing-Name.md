---
tc_id: TC-CU-017
title: Block Submission When Only the Name Is Empty
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - validation
  - name
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | empty |
| All other fields | valid (TC-CU-001 baseline) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Complete every field except the name; submit in UI.
2. Repeat via curl with `NAME=""`.

# Expected Result
- Submission blocked; only the name-specific error is displayed (`errors.name`, required).
- Other field values are preserved while the user corrects the name.

# Notes
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME=""
PHONE="+966 50 123 4567"
EMAIL="abdullah.alharbi@example.com"
PROJECT_TYPE="تطبيق جوال"
MESSAGE="نحتاج تطبيق جوال لحجز مواعيد."
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422; `errors.name` present, no other errors.
```

---
*Last Updated: 2026-09-23 12:16*
