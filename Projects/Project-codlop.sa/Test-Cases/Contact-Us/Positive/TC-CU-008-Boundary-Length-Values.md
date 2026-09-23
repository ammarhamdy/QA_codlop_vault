---
tc_id: TC-CU-008
title: Submit Values Exactly at Allowed Limits (120 / 20 / 180 / 4,000 Chars)
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Full name (120) | `Test-Data/Name-120.txt` — Arabic name padded to exactly 120 chars |
| Saudi mobile (20) | `+966  (050) 123-4567` — double space after `+966`, exactly 20 chars |
| Email (180) | `Test-Data/Email-180.txt` — RFC-valid (64-char local limit respected, long domain), exactly 180 chars |
| Project details (4,000) | `Test-Data/Msg-4000.txt` — Arabic sentence repeated, exactly 4,000 chars |
| Consent | checked |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Load the four boundary payloads from Test-Data.
2. Submit via UI (paste) — client `maxlength` must allow the exact length.
3. Submit via the curl runner to bypass client limits and prove server acceptance.

# Expected Result
- All four values are accepted at the exact limit (HTTP 200).
- Phone `+966  (050) 123-4567` normalizes to +966501234567 (collapsed double space + trunk 0).
- Message is stored in full — no silent truncation at 4,000.
- UI counters/limits never block a legal at-limit value.

# Notes
- 180-char RFC-valid email requires a long domain because RFC local-part is ≤ 64 chars — see the file's structure.
- Companion rejection cases: TC-CU-019, TC-CU-020, TC-CU-023, TC-CU-024.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
TD="Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data"

# 1) Boundary self-check first — must print "boundary sizes OK"
python3 - <<'PY'
from pathlib import Path
td = Path("Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data")
sizes = {n: len((td / n).read_text(encoding="utf-8")) for n in
         ["Name-120.txt", "Phone-20.txt", "Email-180.txt", "Msg-4000.txt"]}
assert sizes == {"Name-120.txt": 120, "Phone-20.txt": 20,
                 "Email-180.txt": 180, "Msg-4000.txt": 4000}, sizes
print("boundary sizes OK:", sizes)
PY

# 2) Submit all four at-limit values
bash Projects/Project-codlop.sa/Scripts/contect-us.sh \
  --name "$(cat "$TD/Name-120.txt")" \
  --phone "$(cat "$TD/Phone-20.txt")" \
  --email "$(cat "$TD/Email-180.txt")" \
  --project-type "تطبيق جوال" \
  --message "$(cat "$TD/Msg-4000.txt")"
# Expect: HTTP 200 — accepted at the exact limits (no max:120/20/180/4000 rejection, message not truncated).
```

---
*Last Updated: 2026-09-23 13:07*
