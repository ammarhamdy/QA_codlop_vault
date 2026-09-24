---
tc_id: TC-TEAM-040
title: Paste Script HTML Into Text And Link Fields Verify Safe Handling
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - security
  - xss
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Payloads | `<script>alert(1)</script>`, `<img src=x onerror=alert(1)>`, `javascript:alert(1)` |
| Targets | `name_ar`, `title_ar`, `bio_ar`, `linkedin_url`, `x_url` |

# Preconditions
- Logged in as admin; public team page accessible for output check.

# Steps
1. Paste each payload into each target field; save.
2. If save succeeds, open the public team card and view source.
3. Check for script execution, broken markup, or unescaped output.

# Expected Result
- Payloads rendered as inert text (escaped) or rejected with validation; no script execution, no `javascript:` href stored.

# Notes
- Security case: verify both editor redisplay and public card output encoding.

# Attachments
- Screenshots + page-source excerpts showing escaped output.

# Script
```shell
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=<script>alert(1)</script>" --form "title_ar=مهندس برمجيات" \
  --form "bio_ar=<img src=x onerror=alert(1)>" --form "linkedin_url=javascript:alert(1)" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1" | grep -ioE '(script|onerror|javascript)[^<]*' | head -5
# Expect: either validation error OR escaped entities (&lt;script&gt;) — never raw executable markup.
```

---
*Last Updated: 2026-09-24 00:00*
