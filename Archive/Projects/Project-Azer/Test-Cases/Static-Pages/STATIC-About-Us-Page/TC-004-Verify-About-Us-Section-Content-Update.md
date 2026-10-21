---
tc_id: TC_ABOUT_001
title: Update About Section with valid title and content
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-001
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Title | من نحن |
| Content | منصة تفاعلية رائدة |

# Preconditions

- Admin user is logged in.
- About Us page exists.

# Steps

1. Open Admin Dashboard.
2. Navigate to About Us.
3. Update About Section title.
4. Update About Section content.
5. Click Save.

# Expected Result

- Success message displayed.
- Data saved successfully.
- Updated content appears on website About Us page.

# Notes

Verify database values are updated.

# Attachments