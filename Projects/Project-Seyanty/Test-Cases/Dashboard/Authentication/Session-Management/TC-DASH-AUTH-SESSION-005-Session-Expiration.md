---
tc_id: TC-DASH-AUTH-SESSION-005
title: Session Expiration
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-004
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- The user's authenticated session has reached its configured expiration condition (e.g., idle timeout or absolute session duration).

# Steps
1. Authenticate and establish a session.
2. Let the session reach its configured expiration condition without further activity.
3. Attempt to access a protected dashboard resource.
4. Observe the system response.

# Expected Result
- The system considers the session invalid.
- The user is required to authenticate again.
- Access to the protected dashboard resource is denied until re-authentication.

# Notes
- Applies to AC-05 — Session Expiration.

# Attachments