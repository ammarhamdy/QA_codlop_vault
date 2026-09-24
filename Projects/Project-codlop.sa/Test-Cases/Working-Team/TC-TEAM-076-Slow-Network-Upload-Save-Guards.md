---
tc_id: TC-TEAM-076
title: Slow Network Upload And Save Prevent Duplicates And Inconsistent State
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - reliability
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Network | Throttled (e.g. Slow 3G) during image upload + save |
| `photo` | Valid square image ≥800×800 |

# Preconditions
- Logged in as admin; network throttling available (devtools); valid image ready.

# Steps
1. Throttle to slow network; upload image and observe progress/disabled-save behavior.
2. Attempt double-click / double-submit during the slow save.
3. Restore network; verify exactly one member record with one consistent image + field set.

# Expected Result
- Progress indication or disabled actions during upload/save; no duplicate members, no half-saved state (image without fields or vice versa).

# Notes
- Count records before/after to prove no duplicates.

# Attachments
- Screenshots of progress/disabled state; before/after record counts.

# Script
```shell
# Count members before/after the throttled UI save:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team" | grep -co 'team/[0-9]*/edit'
# Expect: count increases by exactly 1 with consistent fields + single stored photo.
```

---
*Last Updated: 2026-09-24 00:00*
