---
tc_id: TC-TEAM-041
title: Enter Extremely Long Inputs Verify Usability And Limits
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - boundary
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Long inputs | 5k-char name/title, 100k-char bio, 2k-char URL |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. Paste extremely long values into `name_ar`, `title_ar`, `bio_ar`, `linkedin_url`.
2. Observe editor behavior (lag, overflow, layout break).
3. Submit; record truncation, validation limit message, or DB error.
4. Open public card if saved; check layout integrity.

# Expected Result
- Interface stays usable; app enforces a documented limit (validation message or safe truncation) — no 500 error, no broken card layout.

# Notes
- Generate strings via script; record the exact enforced limits in the run.

# Attachments
- Screenshots of limit messages / card rendering.

# Script
```shell
LONG_NAME=$(python3 -c "print('أ'*5000)")
LONG_URL="https://linkedin.com/"$(python3 -c "print('a'*2000)")
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=$LONG_NAME" --form "title_ar=مهندس برمجيات" \
  --form "linkedin_url=$LONG_URL" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302 with truncation OR redirect-back with max-length validation (never 500).
```

---
*Last Updated: 2026-09-24 00:00*
