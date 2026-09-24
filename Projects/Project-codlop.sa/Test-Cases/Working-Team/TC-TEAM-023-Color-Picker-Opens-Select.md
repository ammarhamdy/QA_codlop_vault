---
tc_id: TC-TEAM-023
title: Verify Card Color Picker Opens And Allows Color Selection
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - card-color
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Form field | `tint` (e.g. `mint`, `cyan`) |

# Preconditions
- Logged in as admin; member create/edit form open.

# Steps
1. Locate the card color control (`tint`).
2. Activate it via mouse click.
3. Verify the picker palette opens and options are visible/selectable.
4. Select a color and confirm the control reflects the selection before saving.

# Expected Result
- Picker opens on first activation without errors.
- A color can be selected and the selection is visibly indicated pre-save.

# Notes
- Predecessor to TC-TEAM-024 (preview reflection) and TC-TEAM-006 (retention).

# Attachments
- Screenshot of open color picker.

# Script
```shell
# Confirm tint field exists on the create page:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/create" | grep -o 'name="tint"[^>]*' | head -3
# Expect: tint input/select present with color options.
```

---
*Last Updated: 2026-09-24 00:00*
