---
requirement_id: REQ-001
title: Role Selection & OTP Trigger
priority: High
status: Draft
tags:
  - requirement
---

## Description
Initiate registration session by sending a verification token and triggering SMS OTP.

## Acceptance Criteria
---

* **Scenario 1.1 (Success):** GIVEN a new user selects any valid role (`user_type_id`: `1`, `2`, or `4`) and enters a valid phone (`phone_code="966"`, `phone="50XXXXXXX"`), WHEN the user taps "التالي" (Next), THEN system executes `POST /api/otp/send`, AND stores `verification_token` UUID from response data, AND navigates user to Screen 2 with a 90-second countdown timer.

* **Scenario 1.2 (Validation Failure / Rate Limit):** GIVEN an invalid phone number or an active unexpired request cooldown, WHEN the request is dispatched, THEN backend returns `HTTP 422/429` with error message, AND client shows inline error without transitioning screen.

*Last Updated: {{date}} {{time}}*