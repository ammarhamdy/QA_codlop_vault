---
tc_id: TC-HP-003
title: Verify Discover Section Content and Cards Visibility
priority: High
status: Draft
type: Functional
linked_requirement: US-HOME-003
tags:
  - test-case
  - home-page
  - discover-section
---

# Test Data
| Field             | Value                                                              |
| ----------------- | ------------------------------------------------------------------ |
| Section Title     | كل ما تحتاجه في مكان واحد                                         |
| Section Desc      | مجموعة متنوعة من الموارد التعليمية المصممة لكل مرحلة عمرية         |
| Discover Items Count | 5                                                               |

# Preconditions
- The website's home page is accessible.
- Discover cards are configured in the system.

# Steps
1. Navigate to the Home Page.
2. Scroll down to the Discover section.
3. Verify the presence and correctness of the section title and description.
4. Verify that all 5 discover cards are displayed.
5. For each discover card, verify:
    - The card title is visible.
    - The card description is visible.
    - The card image is visible and loads correctly.

# Expected Result
- Section title and description match the configured values.
- Exactly 5 discover cards are visible (Books, Interactive Activities, Educational Courses, Educational Services, Educational Products).
- Each card displays its respective title, description, and image correctly.

# Notes

# Attachments
