---
tc_id: TC-ABOUT-003
title: Verify Vision Section Content and Items on About Us Page
priority: High
status:
  - Ready
type: Functional
linked_requirement: US-ABOUT-003-
tags:
  - test-case
  - about-us-page
  - vision-section
run_result: pass
---

# Test Data
| Field           | Value                   |
| --------------- | ----------------------- |
| Vision Title    | رؤيتنا (Our Vision Title) |
| Vision Content  | (Our Vision Description)|
| Vision Icon     | (Our Vision Icon URL)   |
| Vision Items Count| 3 (Example)             |

# Preconditions
- The About Us page is accessible.

# Steps
1. Navigate to the About Us page.
2. Scroll down to the 'Vision' section.
3. Verify that the vision title is visible.
4. Verify that the vision content is visible.
5. Verify that the section icon is visible and loads correctly.
6. Verify that all configured vision items are visible (e.g., 3 items).

# Expected Result
- The 'Vision' section title, content, and icon are all visible and displayed correctly.
- All individual vision items are visible and formatted correctly.

# Notes
- No JSON content was provided for the 'Vision' section in the user story; test data for content and items is based on general expectation. The number of vision items is an assumption for testing.

# Attachments
