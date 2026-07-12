---
tc_id: TC-CAT-ERR-012
title: Category source unreachable renders loading/empty state
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-030, Error Handling (Section 5)
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| categorySource | An endpoint that is down or unreachable |

# Preconditions
- The configured category source API/endpoint is not reachable (network error or server down).

# Steps
1. Load the Home screen on the mobile app.
2. Observe the behavior.

# Expected Result
- The section renders in a loading or empty state (per general Home screen network-error handling).
- No app crash occurs.
- The app retries on the next refresh.
- Other sections on the Home screen are unaffected.

# Notes
This scenario is subject to the app's general network-error handling strategy.
# Attachments
