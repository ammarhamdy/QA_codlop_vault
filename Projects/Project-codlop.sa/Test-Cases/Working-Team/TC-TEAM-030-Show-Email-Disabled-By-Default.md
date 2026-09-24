---
tc_id: TC-TEAM-030
title: Verify Show Email Disabled By Default And Email Hidden
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-visibility
  - default-value
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `email` | `codlop.sa@mail.com` |
| Show-email control | untouched (expected OFF) |

# Preconditions
- Logged in as admin; create form open. NOTE: `Scripts/create-team-member.sh` sends `email` but no show-email flag — capture the actual param name from the form/network tab during execution.

# Steps
1. Open a new member form; record the initial state of the "Show email" control without touching it.
2. Enter a valid email plus required fields; save.
3. Open the public team profile and check email visibility.

# Expected Result
- "Show email" is OFF by default; public profile hides the email even though one is stored.

# Notes
- Predecessor to TC-TEAM-016/017 and TC-TEAM-031 (toggle cycle).

# Attachments
- Screenshots of default toggle state and public profile without email.

# Script
```shell
# Create member with email but without touching show-email; then inspect public card:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; public view must NOT expose the stored email.
```

---
*Last Updated: 2026-09-24 00:00*
