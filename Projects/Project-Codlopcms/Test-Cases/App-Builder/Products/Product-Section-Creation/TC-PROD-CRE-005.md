---
tc_id: TC-PROD-CRE-005
title: Verify Section Is Not Visible to Mobile App Until Enabled and Published
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-001
tags:
  - test-case
  - creation
  - visibility
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | New Products |
| Enabled | false |
| Published | false |

# Preconditions
- A new Product Section has been created but not yet enabled or published.
- Mobile app is installed and connected to the same backend.

# Steps
1. Create a new Product Section with `enabled` set to false.
2. Do not publish the changes.
3. Open the mobile app and navigate to the Home screen.
4. Refresh the Home screen.

# Expected Result
- The newly created section does not appear on the mobile Home screen.
- No network request for this section's JSON is made (since it is not published).
- Other existing sections render as expected.

# Notes
- The section must be explicitly enabled (`enabled: true`) and published to become visible.

# Attachments
