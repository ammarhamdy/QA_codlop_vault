---
tc_id: TC-PT-017
title: Verify Newly Created Property Type is Enabled by Default
priority: Medium
status: Ready
type: Functional
linked_requirement: FR-PT-005
tags:
  - test-case
  - create
  - enable-disable
  - positive
---

# Test Data
| Field | Value |
|-------|-------|
| Name | Studio |
| Property Categories | Residential |

# Preconditions
- User is logged in as an administrator.
- At least one Property Category exists.

# Steps
1. Navigate to Property Settings → Property Types.
2. Create a new Property Type named "Studio" with category Residential.
3. After successful creation, locate "Studio" in the Property Types list.
4. Verify the Status column shows "Enabled".

# Expected Result
- The newly created Property Type "Studio" has status "Enabled" by default.

# Notes
- FR-PT-005: "Newly created Property Types shall be Enabled by default."

# Attachments
