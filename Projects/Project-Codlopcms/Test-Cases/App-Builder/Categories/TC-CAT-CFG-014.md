---
tc_id: TC-CAT-CFG-014
title: Toggle CTA visibility and configure CTA text
priority: Medium
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-018, CAT-REQ-019
tags:
  - test-case
  - admin-panel
  - configuration
  - settings
---

# Test Data
| Field | Value |
| ----- | ----- |
| showCta | true / false |
| ctaText | "Shop Now" / "تسوق الآن" |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Set showCta to true and ctaText to "Shop Now". Save.
2. Verify the CTA appears on the mobile app.
3. Edit and change ctaText to "تسوق الآن". Save.
4. Verify the RTL CTA text renders correctly.
5. Edit and set showCta to false. Save.
6. Verify the CTA element is hidden on the mobile app regardless of ctaText value.

# Expected Result
- ctaText accepts free text including UTF-8/RTL characters.
- CTA is only rendered when showCta is true.
- When showCta is false, the CTA is hidden even if ctaText has a value.
- The mobile app reflects the visibility toggle immediately after refresh.

# Notes
# Attachments
