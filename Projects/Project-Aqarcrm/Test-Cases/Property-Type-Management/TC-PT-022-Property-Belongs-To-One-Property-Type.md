---
tc_id: TC-PT-022
title: Verify Property Belongs to Exactly One Property Type
priority: Medium
status: Ready
type: Functional
linked_requirement: BR-PT-001
tags:
  - test-case
  - business-rule
  - integration
---

# Test Data
| Field | Value |
|-------|-------|
| Property Types | Apartment, Villa, Land |

# Preconditions
- User is logged in as an administrator.
- At least three Property Types exist (Apartment, Villa, Land).

# Steps
1. Navigate to Property Management → Add New Property.
2. Observe the Property Type field.
3. Verify that the field is a single-select dropdown (not multi-select).
4. Select a Property Type (e.g., "Apartment").
5. Complete the required fields and save the Property.
6. After saving, view the Property details.
7. Verify that exactly one Property Type is displayed.
8. Attempt to create a Property without selecting a Property Type.

# Expected Result
- The Property Type field is a single-select control allowing only one selection.
- A newly created Property displays exactly one Property Type.
- The system shall enforce that every Property must have exactly one Property Type assigned (the form should require selection).

# Notes
- BR-PT-001: "Every Property must belong to exactly one Property Type."

# Attachments
