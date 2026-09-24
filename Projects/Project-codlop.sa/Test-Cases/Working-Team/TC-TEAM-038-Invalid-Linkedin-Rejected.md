---
tc_id: TC-TEAM-038
title: Enter Invalid LinkedIn Value Verify Rejected Or Flagged
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
| Invalid `linkedin_url` | `plain text`, `linkedin`, `http:/bad`, `https://` |
| Valid | `https://linkedin.com` |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. Enter each invalid LinkedIn value with required `title_ar` filled; submit.
2. Record whether rejected with a message or flagged inline.
3. Enter `https://linkedin.com` and confirm acceptance (TC-TEAM-007).

# Expected Result
- Plain text / incomplete URLs rejected or clearly flagged; never silently stored as valid. Valid URL accepted.

# Notes
- Check stored value after any bypass-looking success — must not persist invalid data.

# Attachments
- Screenshots of each rejection/flag.

# Script
```shell
for U in 'plain text' 'linkedin' 'http:/bad' 'https://'; do
echo "== $U"
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" --form "linkedin_url=$U" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1" | grep -io 'linkedin[^<]*' | head -2
done
# Expect: validation error per invalid value.
```

---
*Last Updated: 2026-09-24 00:00*
