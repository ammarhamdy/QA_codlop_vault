---
tc_id: TC-TEAM-039
title: Enter Invalid X Profile Value Verify Not Silently Accepted
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - url-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Invalid `x_url` | `just text`, `x`, `@handle`, `https://` |
| Valid | `https://x.com/codlop` |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. Enter each invalid X value with required `title_ar`; submit.
2. Verify each is rejected/flagged and not stored as a valid profile link.
3. Enter `https://x.com/codlop` and confirm acceptance (TC-TEAM-007).

# Expected Result
- No invalid X value is silently accepted; either blocked or visibly flagged. Valid URL accepted.

# Notes
- Mirror of TC-TEAM-038 for the X field; verify public card never renders an invalid href.

# Attachments
- Screenshots of each rejection/flag.

# Script
```shell
for U in 'just text' '@handle' 'x' 'https://'; do
echo "== $U"
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" --form "x_url=$U" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1" | grep -io 'x_url[^<]*' | head -2
done
# Expect: validation error per invalid value.
```

---
*Last Updated: 2026-09-24 00:00*
