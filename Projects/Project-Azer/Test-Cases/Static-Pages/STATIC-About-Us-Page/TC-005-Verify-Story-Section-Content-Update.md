---
tc_id: TC_ABOUT_002
title: Update Story Section with valid title and content
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-002
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Title | قصتنا |
| Content | بدأنا برؤية بسيطة |

# Preconditions

- Admin logged in.

# Steps

1. Navigate to About Us page.
2. Edit Story title.
3. Edit Story content.
4. Save changes.

# Expected Result

- Changes saved successfully.
- Updated story displayed on website.

# Notes

Verify API response code is 200.

# Attachments