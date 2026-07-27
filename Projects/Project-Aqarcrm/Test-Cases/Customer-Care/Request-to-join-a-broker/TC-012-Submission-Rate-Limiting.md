---
tc_id: TC-Broker-Req-012
title: Verify join broker Request Form Submission Rate Limiting
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004-Broker-Join-Request
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User opens join as broker form.
-The system has a configured rate limit for form submissions (e.g., N submissions within T minutes from the same IP/session).
# Steps
1. Opens join as broker form.
2. Fill in all required fields with valid data.
3. Repeatedly click the "Submit" button more than the configured rate limit within the specified time frame.
# Expected Result
- After exceeding the rate limit, the system should display an error message (e.g., "Too many requests. Please try again later.").
- The system should prevent further submissions for a cool-down period.
- No new requests should be stored after the limit is reached.
# Notes

# Attachments
