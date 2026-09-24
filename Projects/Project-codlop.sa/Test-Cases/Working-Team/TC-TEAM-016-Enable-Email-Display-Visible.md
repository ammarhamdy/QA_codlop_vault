---
tc_id: TC-TEAM-016
title: Enable Email Display Verify Email Visible To Permitted Visitors
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - email-display
  - visibility
---

# Test Data
| Field | Value |
| ----- | ----- |
| `email` | `codlop.sa@mail.com` |
| Email-display switch | ON (record exact field name, e.g. `show_email=1`) |
| `is_visible` | `1` |

# Preconditions
- Member visible with stored email `codlop.sa@mail.com`.

# Steps
1. Turn the email-display switch ON.
2. Save.
3. Open the public member card as a permitted visitor (incognito / allowed role per spec).
4. Verify the email address is shown (and `mailto:` link works if provided).

# Expected Result
- Email `codlop.sa@mail.com` is visible on the card to permitted visitors.
- Stored email unchanged in the edit form.

# Notes
- The provided curl has no `show_email` field — record the actual request parameter during the UI run and append it to this case.
- If visibility is role-gated, verify both an allowed and a denied role.

# Attachments
- Screenshots: switch ON state + public card showing email.

# Script
```shell
# UI-driven (email-display param TBD); storage baseline via curl:
curl --silent --show-error --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=سيرة" --form "bio_en=bio" \
  --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Then toggle email-display ON in UI and check: curl -s "https://test.codlop.sa/team" | grep -c "codlop.sa@mail.com"
# Expect: >= 1.
```

---
*Last Updated: 2026-09-24 00:00*
