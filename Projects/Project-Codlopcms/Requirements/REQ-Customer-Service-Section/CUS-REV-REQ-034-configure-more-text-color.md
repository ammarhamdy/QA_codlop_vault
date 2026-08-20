---
requirement_id: CUS-REV-REQ-034
title: Configure More Text Color
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the color of the Customer Review section's more/action text using the `settings.showMoreTextColor` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains a `settings.showMoreTextColor` attribute.
- [ ] The administrator can configure the more/action text color.
- [ ] The configured color is stored in the Customer Review section configuration.
- [ ] The generated JSON contains the configured value in `settings.showMoreTextColor`.
- [ ] The Mobile App applies the configured color to the Customer Review section's more/action text when that text is displayed.
- [ ] Changing `showMoreTextColor` does not modify other Customer Review section settings or styles.