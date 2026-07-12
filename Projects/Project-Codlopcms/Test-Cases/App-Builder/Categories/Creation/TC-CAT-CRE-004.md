---
tc_id: TC-CAT-CRE-004
title: Create multiple Categories sections with independent configurations
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-003
tags:
  - test-case
  - admin-panel
  - creation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 layout | type-two |
| Section 1 title | "Featured Categories" |
| Section 2 layout | (a different layout) |
| Section 2 title | "Promotions" |

# Preconditions
- Admin Panel is accessible.

# Steps
1. Create a new Categories section with layout "type-two" and title "Featured Categories".
2. Configure style (e.g., blue background), settings, and select categories.
3. Save and enable Section 1.
4. Create a second Categories section with a different layout and title "Promotions".
5. Configure different style (e.g., red background), settings, and select different categories.
6. Save and enable Section 2.
7. Edit Section 1 and change a setting.
8. Verify Section 2 configuration is unaffected.
9. Inspect the generated JSON for both sections.

# Expected Result
- Two distinct Categories sections exist with independent `id`, `section_key`, `layout`, `style`, `settings`, and category selections.
- Changing Section 1 does not alter Section 2's configuration.
- The generated JSON contains both sections with their respective configurations.

# Notes
# Attachments
