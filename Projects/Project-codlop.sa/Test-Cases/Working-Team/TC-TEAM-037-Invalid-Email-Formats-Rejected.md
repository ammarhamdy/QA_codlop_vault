---
tc_id: TC-TEAM-037
title: Enter Invalid Email Formats Verify Validation Error
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Invalid emails | `user@`, `user.example.com`, `user@@example.com` |
| Valid email | `codlop.sa@mail.com` |

# Preconditions
- Logged in as admin; create form open.

# Steps
1. For each invalid value (`user@`, `user.example.com`, `user@@example.com`): enter it in `email`, fill required `title_ar`, submit.
2. Record the validation message for each.
3. Enter `codlop.sa@mail.com` and confirm it is accepted (links to TC-TEAM-008).

# Expected Result
- Each invalid email shows a validation error; nothing saved with invalid email. Valid email accepted.

# Notes
- Test values one at a time; check both client and server messages.

# Attachments
- Screenshots of each validation error.

# Script
```shell
for E in 'user@' 'user.example.com' 'user@@example.com'; do
echo "== $E"
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "title_ar=مهندس برمجيات" \
  --form "email=$E" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1" | grep -io 'email[^<]*' | head -2
done
# Expect: validation error for each invalid email.
```

---
*Last Updated: 2026-09-24 00:00*
