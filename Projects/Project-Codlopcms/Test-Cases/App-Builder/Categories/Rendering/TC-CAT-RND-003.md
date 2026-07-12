---
tc_id: TC-CAT-RND-003
title: Mobile app applies all style fields to visual elements
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-042
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field                         | Value   |
| ----------------------------- | ------- |
| background                    | #FF5733 |
| titleColor                    | #FFFFFF |
| textColor                     | #000000 |
| radius                        | 12      |
| padding                       | 16      |
| shadow                        | "none"  |
| transparentBackground         | false   |
| hideBorder                    | false   |
| titleGap                      | 10      |
| gapTop                        | 20      |
| gapBottom                     | 20      |


# Preconditions
- A Categories section is configured with all style fields set to known values.
- The section has CTA enabled, showPrice true, and highlight set to a non-none value.

# Steps
1. Load the Home screen on the mobile app.
2. Visually inspect each styled element.

# Expected Result
- Section background has color #FF5733.
- Title text has color #FFFFFF.
- Category item labels have color #000000.
- Section corners have radius 12.
- Section padding is 16.
- Shadow style is applied as configured.
- Section background is opaque (transparentBackground is false).
- Section border is visible (hideBorder is false).
- Title gap spacing is 10.
- Gap above section is 20.
- Gap below section is 20.


# Notes
# Attachments
