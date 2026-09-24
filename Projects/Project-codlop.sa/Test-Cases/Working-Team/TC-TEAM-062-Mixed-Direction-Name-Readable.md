---
tc_id: TC-TEAM-062
title: Arabic Name With Latin Surname Keeps Mixed Direction Readable
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - bidi
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `name_ar` | `أحمد Smith` / `Smith أحمد` (both orders) |

# Preconditions
- Logged in as admin.

# Steps
1. Save a member with Arabic first name + Latin surname (both orders across two test members).
2. Check editor display and public card display for each.
3. Confirm name order stays understandable (no mirrored segments).

# Expected Result
- Mixed-direction name readable in both editor and public card; segment order preserved.

# Notes
- BiDi isolation check; related to TC-TEAM-033 and TC-TEAM-042.

# Attachments
- Screenshots of both orders in editor + card.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=أحمد Smith" --form "title_ar=مهندس برمجيات" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; verify order fidelity in edit form and public view.
```

---
*Last Updated: 2026-09-24 00:00*
