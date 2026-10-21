---
tc_id: TC-CAT-CFG-012
title: Configure CTA colors when CTA is enabled
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-014
tags:
  - test-case
  - admin-panel
  - configuration
  - style
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| showCta | true |
| ctaTextColor | #FFFFFF |
| ctaBackgroundColor | #007AFF |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Set showCta to true.
2. Set ctaTextColor to "`#FFFFFF`" and ctaBackgroundColor to "`#007AFF`".
3. Save the section.
4. Inspect the generated JSON `style` object.
5. On the mobile app, verify the CTA button uses the configured colors.

# Expected Result
- CTA color fields are visible and editable when showCta is true (or when CTA section is expanded).
- Invalid hex values are rejected.
- Generated JSON contains CTA color values in the `style` object.
- Mobile app renders the CTA with configured colors.

# Notes
# Attachments
