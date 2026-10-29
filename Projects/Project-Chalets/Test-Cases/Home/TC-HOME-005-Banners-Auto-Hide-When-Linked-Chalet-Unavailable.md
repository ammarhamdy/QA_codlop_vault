---
tc_id: TC-HOME-005
title: Verify Banner Linked to Chalet Automatically Disappears When Chalet Becomes Unavailable
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Linked Chalet | Chalet ID `CH-101` (Initially "منشور" / Published and Available) |
| Promotional Banner | Banner `BNR-501` linked directly to `CH-101`, within active time window |
| Chalet Status Change | Transition from "متاح" (Available) to "غير متاح" (Unavailable / Suspended / Unlisted) |

# Preconditions
1. Chalet `CH-101` is published and available.
2. Banner `BNR-501` is configured to deep-link to Chalet `CH-101` and is currently active on the Home screen.
3. Mobile app is displaying the Home screen where Banner `BNR-501` is visible.

# Steps
1. Verify that Banner `BNR-501` is currently displayed in the Home screen banners section.
2. In the administration panel / lessor account, change Chalet `CH-101` status to unavailable (e.g., suspend chalet, unpublish, or disable its active state).
3. On the mobile application Home screen, perform pull-to-refresh (or re-open Home screen).
4. Inspect the banners section.

# Expected Result
1. The system detects that the chalet linked to `BNR-501` is no longer available.
2. Banner `BNR-501` automatically disappears from the Home screen banners section.
3. Users are prevented from viewing or tapping a banner leading to an unavailable chalet.

# Notes
- Requirement: `المرتبط بشاليه أصبح غير متاح يختفي آليًا`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
