---
tc_id: TC-CU-002
title: Submit With Valid Required Fields and Blank Email
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - form-submission
  - email
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Full name | `نورة عبدالعزيز الشمري` |
| Saudi mobile | `0551234567` |
| Email | *left blank* |
| Project type | `متجر إلكتروني` |
| Project details | `أرغب في متجر إلكتروني لبيع تمور القصيم مع ربط بشركات الشحن.` |
| Consent | checked |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Fill name, phone, project type and message.
2. Leave the email field completely empty.
3. Accept consent and submit.

# Expected Result
- Submission succeeds even with no email — email is optional.
- No email-related validation error appears.
- Lead stored with an empty/null email.

# Notes
- Also verify with a *whitespace-only* email is NOT the same case (see TC-CU-018 for whitespace required fields).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# The runner treats --email as required by its own gate; this case needs the optional/blank path,
# so a /tmp copy drops EMAIL from that gate (source runner untouched). Parameter present vs absent are tested.
SCR="/home/am/Vault/QA_codlop_vault/Projects/Project-codlop.sa/Scripts/contect-us.sh"
sed -e 's/ || \[ -z "\$EMAIL" \]//' -e 's|curl -X POST|curl -sS -w " HTTP:%{http_code}" -X POST|' "$SCR" > /tmp/tc-cu-002a.sh

# Variant A — email parameter present but empty
bash /tmp/tc-cu-002a.sh \
  --name "نورة عبدالعزيز الشمري" \
  --phone "0551234567" \
  --email "" \
  --project-type "متجر إلكتروني" \
  --message "أرغب في متجر إلكتروني لبيع تمور القصيم مع ربط بشركات الشحن." | jq

# Variant B — email parameter omitted entirely (-F line dropped)
sed -e 's/ || \[ -z "\$EMAIL" \]//' -e '/-F "email=\$EMAIL"/d' -e 's|curl -X POST|curl -sS -w " HTTP:%{http_code}" -X POST|' "$SCR" > /tmp/tc-cu-002b.sh
bash /tmp/tc-cu-002b.sh \
  --name "نورة عبدالعزيز الشمري" \
  --phone "0551234567" \
  --project-type "متجر إلكتروني" \
  --message "أرغب في متجر إلكتروني لبيع تمور القصيم مع ربط بشركات الشحن." | jq

# Expect: HTTP:200 for BOTH variants; no errors.email anywhere (email is optional).
```

---
*Last Updated: 2026-09-23 13:01*
