---
tc_id: TC-CAT-CFG-016
title: Toggle showBannerTextCta independent of primary CTA
priority: Low
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-017
tags:
  - test-case
  - admin-panel
  - configuration
  - settings
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| showBannerTextCta | true / false |
| showCta | true |
| ctaText | "Shop Now" |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Set showCta to true and ctaText to "Shop Now".
2. Set showBannerTextCta to true. Save.
3. On the mobile app, observe the banner text CTA behavior.
4. Edit, set showBannerTextCta to false. Save.
5. On the mobile app, observe the banner text CTA is hidden while primary CTA remains visible.

# Expected Result
- showBannerTextCta accepts boolean true/false.
- The banner text CTA behaves independently from the primary CTA (showCta).
- Generated JSON contains `"showBannerTextCta": true/false`.

# Notes
Note: Exact distinct behavior vs. primary CTA is pending confirmation (see spec Open Questions).
# Attachments
