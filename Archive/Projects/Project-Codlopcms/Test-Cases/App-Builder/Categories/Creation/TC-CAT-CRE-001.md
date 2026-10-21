---
tc_id: TC-CAT-CRE-001
title: Create a new Categories section with type=category
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-001, CAT-REQ-005
tags:
  - test-case
  - admin-panel
  - creation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section type selection | "category" |

# Preconditions
- User is logged into the Admin Panel with appropriate permissions.
- Home screen configuration is accessible.

# Steps
1. Navigate to the Home screen configuration in the Admin Panel.
2. Click "Add Section" and select type "category" from the available section types.
3. Verify the new section appears in the section list.
4. View the generated JSON for the Home screen configuration.

# Expected Result
- A new Categories section is created and appears in the section list.
- The section type is set to "category" automatically and is not editable.
- A unique `id` is auto-generated for the section.
- A `section_key` (e.g., `type_two`) is assigned.
- The section is not published/visible to the mobile app until explicitly enabled.
- The generated JSON contains `"type": "category"`.

# Notes
# Attachments
