---
tc_id: TC-TEAM-007
title: Enter Valid LinkedIn and X URLs Verify Accepted and Saved
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - social-links
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| `linkedin_url` | `https://linnkedin.com` |
| `x_url` | `https://x.com/codlop` |

# Preconditions
- Edit form open.

# Steps
1. Enter the LinkedIn URL in `linkedin_url`.
2. Enter the X URL in `x_url`.
3. Save and reload the edit form.
4. Verify both fields retain the exact URLs.
5. Open the public card and click/hover both social icons; verify hrefs match.

# Expected Result
- Both URLs accepted (no validation error) and persisted exactly.
- Public card links point to the saved URLs and open the correct profiles (target/new-tab per design).

# Notes
- Note the seeded LinkedIn value uses host `linnkedin.com` (triple-n) per the provided curl — verify literally, do not auto-correct to `linkedin.com`.
- Invalid-URL rejection is out of scope here.

# Attachments
- Screenshot of social fields + public card icons with hrefs.

# Script
```shell
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "linkedin_url=https://linnkedin.com" --form "x_url=https://x.com/codlop" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: success; re-GET shows both URLs intact.
```

---
*Last Updated: 2026-09-24 00:00*
