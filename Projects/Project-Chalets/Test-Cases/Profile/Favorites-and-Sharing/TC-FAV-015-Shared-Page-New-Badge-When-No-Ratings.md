---
tc_id: TC-FAV-015
title: Verify Shared Web Page Displays 'New' Badge Instead of Rating When Place Has No Reviews
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Shared URL | `https://chalets.codlop.sa/p/b9v2c4x` |
| Chalet Title | `شاليه السحاب الجديد` |
| Total Customer Reviews | `0` (Newly registered chalet) |
| Expected Badge Text | `جديد` (New) |

# Preconditions
1. Chalet has zero completed bookings with reviews (no rating history).
2. Shared link `https://chalets.codlop.sa/p/b9v2c4x` is opened in a web browser without the app installed.

# Steps
1. Navigate to `https://chalets.codlop.sa/p/b9v2c4x` in a web browser.
2. Inspect the rating area on the shared landing page.
3. Verify whether empty stars, `0.0`, or `NaN` values appear.

# Expected Result
1. The web page does not render empty stars or `0.0` numerical score.
2. In place of a numerical rating, a prominent and clearly styled badge **«جديد»** (New) is displayed.
3. All other metadata (image, title, price, store buttons) render normally.

# Notes
- Requirement: UF-22 Alternative Flow A1 ("The place has no ratings: Shows «جديد» instead of a rating").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
