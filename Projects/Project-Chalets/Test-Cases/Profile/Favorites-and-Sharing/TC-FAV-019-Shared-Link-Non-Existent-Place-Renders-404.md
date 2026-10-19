---
tc_id: TC-FAV-019
title: Verify Shared Web Link with Non-Existent or Invalid Identifier Renders 404 Error Page
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Non-Existent Shared URL | `https://chalets.codlop.sa/p/invalid999random` |
| Expected HTTP Status | `404 Not Found` |
| Expected Page Content | Branded 404 Page with home/support navigation |

# Preconditions
1. Identifier `invalid999random` has never been assigned to any chalet or the record was permanently purged from the system.
2. User opens the link in a web browser.

# Steps
1. Navigate to `https://chalets.codlop.sa/p/invalid999random` in a desktop or mobile browser.
2. Inspect HTTP response headers and status code.
3. Inspect rendered HTML page content.

# Expected Result
1. The server returns HTTP status code `404 Not Found`.
2. A friendly, branded 404 error page is rendered indicating that the requested place does not exist or has been removed.
3. The page does not throw unhandled server errors, stack traces, or blank screens.
4. Navigation back to the platform home page or help center is provided.

# Notes
- Requirement: UF-22 Error Flow E1 ("The ad does not exist: Shows a 404 page").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
