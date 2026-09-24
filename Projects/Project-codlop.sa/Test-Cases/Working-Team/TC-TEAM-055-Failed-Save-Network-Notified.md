---
tc_id: TC-TEAM-055
title: Simulate Failed Save Verify Notification And No Silent Data Loss
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - reliability
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Fault | Offline network (devtools) or invalid CSRF token |

# Preconditions
- Logged in as admin; form filled with distinctive values; session valid.

# Steps
1. Go offline (or tamper `_token`) and submit the form.
2. Observe notification/error messaging.
3. Restore connectivity (or valid token); verify entered data is still present in the form.

# Expected Result
- Clear failure notification; entered data not silently lost (form retains values or offers recovery).

# Notes
- Test both transport failure and 419/500 server rejection paths if feasible.

# Attachments
- Screenshots of failure notice + preserved form data.

# Script
```shell
# Server-rejection path with bad token:
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=BADTOKEN" \
  --form "title_ar=مهندس برمجيات" --form "photo=;filename=" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 419/422 with error (never silent 200 that drops data).
```

---
*Last Updated: 2026-09-24 00:00*
