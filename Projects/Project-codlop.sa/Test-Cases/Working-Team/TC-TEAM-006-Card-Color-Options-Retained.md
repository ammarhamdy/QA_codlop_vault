---
tc_id: TC-TEAM-006
title: Change Card Color To Each Option and Verify Retained After Save Reload
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - card-color
  - tint
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Field | `tint` |
| Known option | `mint` |
| Others | each available radio/swatch option in the form (enumerate during run) |

# Preconditions
- Edit form open; note the initial `tint` value.

# Steps
1. For EACH color option (including `mint`):
   a. Select the color.
   b. Save.
   c. Reload the edit page and record the selected `tint`.
   d. Open the public team card and verify the card styling matches the selected color.
2. Leave the last iteration on `mint` to restore baseline.

# Expected Result
- Every option saves without error.
- After each save + reload, the same option remains selected (`tint` value round-trips).
- Public card color matches the saved `tint` in every iteration.

# Notes
- Exhaustive loop; log the full option list (names + values) in the test run — the curl only proves `mint`.
- Fails if any option reverts to default after reload.

# Attachments
- Screenshot per color (form selection + public card).

# Script
```shell
for TINT in mint $(grep -o 'value="[a-z-]*"' team-edit.html | sort -u); do
  echo "== $TINT =="
  curl -s -o /dev/null -w "%{http_code}\n" --location --request POST "https://test.codlop.sa/admin/team" \
    -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
    --form "name_ar=احمد" --form "name_en=Ahmed" \
    --form "title_ar=مهندس الدعم الفني" --form "title_en=software engineer" \
    --form "tint=$TINT" --form "bio_ar=سيرة" --form "bio_en=bio" \
    --form "email=codlop.sa@mail.com" --form "photo=;filename=" \
    --form "placeholder=pm" --form "is_visible=1"
done
# Expect: success status each iteration; re-GET shows matching tint checked.
```

---
*Last Updated: 2026-09-24 00:00*
