---
tc_id: TC-CU-006
title: Select Each Allowed Project Type and Verify Value Submitted
priority: Medium
status:
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - project-type
---

# Test Data
| Field | Value |
| ----- | ----- |
| Allowed values (live dropdown) | `تطبيق جوال`, `متجر إلكتروني`, `ثيم سلة أو زد`, `نظام إداري`, `موقع تعريفي`, `استضافة ودومين`, `غير ذلك` |
| Other fields | Valid baseline payload (TC-CU-001 values) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. For each of the 7 allowed values, submit the form (dropdown in UI or `-F project_type=…` via API).
2. Verify the response and the stored value for each submission.

# Expected Result
- All 7 values return success.
- Each lead stores `project_type` exactly as sent (Arabic preserved).
- Dropdown in UI offers exactly these 7 options — no duplicates/blank entries.

# Notes
- Allowed list is defined server-side; the UI list was captured from https://test.codlop.sa on 2026-09-23.
- If marketing adds/removes a type, update REQ-CODLOP-SA-001 and this list.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# Loop all 7 allowed project_type values; one /tmp copy with visible HTTP status, source runner untouched.
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
SCR="Projects/Project-codlop.sa/Scripts/contect-us.sh"
sed -e 's|curl -X POST|curl -sS -w " HTTP:%{http_code}" -X POST|' "$SCR" > /tmp/tc-cu-006.sh
for PT in "تطبيق جوال" "متجر إلكتروني" "ثيم سلة أو زد" "نظام إداري" "موقع تعريفي" "استضافة ودومين" "غير ذلك"; do
  echo "=== project_type: $PT ==="
  bash /tmp/tc-cu-006.sh \
    --name "Abdullah Mohammed Al-Harbi" \
    --phone "+966 50 123 4567" \
    --email "abdullah.alharbi@example.com" \
    --project-type "$PT" \
    --message "Automated allow-list check for project_type."
done
# Expect: 7 blocks, each ending with HTTP:200 and its project_type stored verbatim.
```

---
*Last Updated: 2026-09-23 13:05*
