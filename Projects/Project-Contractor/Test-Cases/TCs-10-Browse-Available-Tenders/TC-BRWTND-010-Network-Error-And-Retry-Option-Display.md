---
tc_id: TC-BRWTND-010
title: Verify System Error Handling and Retry Option on Public Catalog Query Failure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Simulated State | Network connection loss / Backend catalog query failure (HTTP 500 / 504) |
| Expected Notification | `"Unable to load tenders. Please check your internet connection and try again."` |
| Expected Action | `"Retry"` button |

# Preconditions
1. The platform is running, but network access is disabled or the catalog API endpoint is returning an error.
2. The user is on the public landing page.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`) while network/service is in a failed state.
2. Await catalog loading.
3. Observe the system response and screen rendering.
4. Verify the error message and interactive controls.

# Expected Result
1. The application handles the retrieval failure gracefully.
2. The error message is displayed: `"Unable to load tenders. Please check your internet connection and try again."`.
3. A prominent "Retry" button is provided.
4. No unhandled crashes or blank screens occur.

# Notes
- Directly validates alternative flow E1 and post-failure requirement in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
