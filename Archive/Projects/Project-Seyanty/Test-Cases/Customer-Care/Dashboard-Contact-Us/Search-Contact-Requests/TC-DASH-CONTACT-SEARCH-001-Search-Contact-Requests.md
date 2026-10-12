---
tc_id: TC-DASH-CONTACT-SEARCH-001
title: Search Contact Requests
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-CONTACT-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                |
| ------------- | -------------------- |
| Search Value  | john.doe@example.com |

# Preconditions
- User is an authorized dashboard user.
- Contact Us requests are available in the system.
- The Contact Us requests search is accessible.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. Enter a search value based on searchable request information.
4. Perform the search.
5. Observe the system response.

# Expected Result
- The system returns the Contact Us requests matching the search criteria.

# Notes
- Applies to AC-01 — Search Contact Us Requests.

# Attachments