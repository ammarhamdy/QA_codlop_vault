---
tc_id: TC-Contact-016
title: Verify Contact  Form Submission Rate Limiting
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
- User is on the website's home 'Contact ' section .
- The system has a configured rate limit for form submissions (e.g., N submissions within T minutes from the same IP/session).

# Steps
1. Fill in all required fields with valid data.
2. Repeatedly click the "Send" button more than the configured rate limit within the specified time frame.
# Expected Result
-  After exceeding the rate limit, the system should display an error message (e.g., "Too many requests. Please try again later.").
- The system should prevent further submissions for a cool-down period.
- No new requests should be stored after the limit is reached.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*Verify Contact Us Form Submission Rate Limiting