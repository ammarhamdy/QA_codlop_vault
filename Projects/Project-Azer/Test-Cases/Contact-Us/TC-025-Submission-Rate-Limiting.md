---
tc_id: TC-025
title: Verify Contact Us Form Submission Rate Limiting
priority: High
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - security
  - rate-limit
---

# Test Data
| Field           | Value           |
| --------------- | --------------- |
| Name            | Rate Limit Test |
| Email Address   | rate.limit@example.com |
| Phone Number    | +11112223333    |
| Message Content | Test message for rate limiting. |
| Request Type    | Inquiry         |
| Submission Count | > configured limit (e.g., 5 within 1 minute) |

# Preconditions
- User is on the website's 'Contact Us' page.
- The system has a configured rate limit for form submissions (e.g., N submissions within T minutes from the same IP/session).

# Steps
1. Navigate to the 'Contact Us' page.
2. Fill in all required fields with valid data.
3. Repeatedly click the "Submit" button more than the configured rate limit within the specified time frame.

# Expected Result
- After exceeding the rate limit, the system should display an error message (e.g., "Too many requests. Please try again later.").
- The system should prevent further submissions for a cool-down period.
- No new requests should be stored after the limit is reached.

# Notes
- Identify the exact rate limit policy (number of submissions, time window) for accurate testing.
- This test may require simulating multiple submissions quickly, potentially using automation.

# Attachments
