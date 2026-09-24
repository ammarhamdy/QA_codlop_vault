---
tc_id: TC-TEAM-073
title: URLs With Query Fragments Unicode Spaces Normalized Or Rejected
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - url-validation
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `linkedin_url` | `https://linkedin.com/in/x?utm=a&b=c#frag`, trailing-space variant, IDN variant |
| `x_url` | `https://x.com/codlop?lang=ar#top`, trailing-space variant |

# Preconditions
- Logged in as admin.

# Steps
1. Enter URLs with query strings, fragments, international characters, and trailing spaces.
2. Save; record stored (normalized?) values.
3. Click/verify rendered links resolve correctly.

# Expected Result
- Valid links normalized safely (trimmed, encoding preserved) and functional; invalid ones rejected — never stored with breaking whitespace or broken hrefs.

# Notes
- Normalization evidence: diff entered vs stored vs rendered href.

# Attachments
- Entered/stored/rendered URL comparison table.

# Script
```shell
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "linkedin_url=https://linkedin.com/in/x?utm=a&b=c#frag " \
  --form "x_url=https://x.com/codlop?lang=ar#top" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1" | grep -ioE '(linkedin_url|x_url)[^<]*' | head -4
# Expect: trimmed/normalized stored values or clear validation errors.
```

---
*Last Updated: 2026-09-24 00:00*
