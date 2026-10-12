---
tc_id: TC-DASH-CONTACT-SEARCH-004
title: Clear Search
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
| Search Value  | (cleared)            |

# Preconditions
- User is an authorized dashboard user.
- A search has been performed in the Contact Us requests.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. Perform a search using a search value.
4. Clear the search criteria.
5. Observe the system response.

# Expected Result
- The system restores the available Contact Us requests.

# Notes
- Applies to AC-04 — Clear Search.

# Attachments