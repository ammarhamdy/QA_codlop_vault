---
requirement_id: FAQ-REQ-034
title: Configure FAQ More Text Color
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the color of the FAQ section's more/action text using the `settings.showMoreTextColor` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains a `settings.showMoreTextColor` attribute.
- [ ] The administrator can configure the more/action text color.
- [ ] The configured color is stored in the FAQ section configuration.
- [ ] The generated JSON contains the configured value in `settings.showMoreTextColor`.
- [ ] The Mobile App applies the configured color to the FAQ section's more/action text when that text is displayed.
- [ ] Changing `showMoreTextColor` does not modify other FAQ section settings or styles.