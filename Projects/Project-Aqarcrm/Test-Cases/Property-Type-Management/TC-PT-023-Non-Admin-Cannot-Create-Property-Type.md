---
tc_id: TC-PT-023
title: Verify Non-Administrator Cannot Create Property Type
priority: Medium
status: Ready
type: Functional
linked_requirement: FR-PT-002
tags:
  - test-case
  - permissions
  - negative
---

# Test Data
| Field | Value |
|-------|-------|
| User Role | Non-admin (e.g., regular user, agent, viewer) |
| Name | Test Property Type |
| Property Categories | Residential |

# Preconditions
- A user without administrator privileges is logged in.
- The non-admin user does not have access to Property Settings.

# Steps
1. Attempt to navigate directly to the Property Types management page (e.g., `/dashboard/property-settings/property-types`).
2. If the page is accessible, attempt to create a new Property Type by submitting the form.
3. Alternatively, attempt to call the API endpoint `POST /dashboard/property-settings/property-types` directly without admin privileges.
4. Observe the system response.

# Expected Result
- The non-admin user shall not be able to access the Property Types management page.
- If the page is not accessible, an appropriate access-denied message or redirect (e.g., 403 Forbidden or redirect to login) is displayed.
- If the API is called directly without admin privileges, the system returns an authorization error (e.g., 401 Unauthorized or 403 Forbidden).
- No Property Type is created.

# Notes
- All Property Type management operations (Create, Read, Update, Delete, Enable/Disable) require administrator privileges. This test focuses on Create as a representative scenario. TODO: Expand to cover all CRUD operations for non-admin users.

# Attachments
