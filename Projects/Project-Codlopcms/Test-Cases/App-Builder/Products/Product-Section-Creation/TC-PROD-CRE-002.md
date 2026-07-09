---
tc_id: TC-PROD-CRE-002
title: Verify Unique Section Identifier Is Automatically Generated on Creation
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-002
tags:
  - test-case
  - creation
  - identifier
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 Title | Section Alpha |
| Section 2 Title | Section Beta |

# Preconditions
- Admin is logged into the Admin Panel.

# Steps
1. Create a new Product Section with title "Section Alpha".
2. Note the generated section `id`.
3. Create another new Product Section with title "Section Beta".
4. Note the generated section `id`.

# Expected Result
- Each section receives a system-generated `id`.
- The two `id` values are different from each other.
- No two sections in the Home screen configuration share the same `id`.

# Notes
- IDs should be unique across all sections, not just product sections.

# Attachments
