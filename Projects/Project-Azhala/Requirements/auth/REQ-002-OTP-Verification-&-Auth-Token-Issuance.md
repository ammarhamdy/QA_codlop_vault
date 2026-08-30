---
requirement_id: REQ-002
title: OTP Verification & Auth Token Issuance
priority: High
status: Draft
tags:
  - requirement
---

## Description
Validate 5-digit code, bind device token for push notifications, and issue a temporary authenticated Bearer session.

## Acceptance Criteria
---

* **Scenario 2.1 (Success):** GIVEN user is on Screen 2 with a valid `verification_token`, WHEN user enters the valid 5-digit OTP, THEN system executes `POST /api/otp/verify`, AND receives `token` (`Bearer`), `user_type`, and `"status": "complete_profile"`, AND securely persists the Bearer token for subsequent requests, AND redirects user to the corresponding role-based profile completion form (Screen 3).

* **Scenario 2.2 (Invalid/Expired OTP):** GIVEN user enters an incorrect OTP or session exceeds backend TTL, WHEN verification request executes, THEN system returns an error (`HTTP 400/422`), AND UI clears input fields, displays error message, and retains remaining timer countdown.

*Last Updated: {{date}} {{time}}*