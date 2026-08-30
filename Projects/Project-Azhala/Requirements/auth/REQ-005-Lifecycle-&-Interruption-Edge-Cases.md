---
requirement_id: REQ-005
title: Lifecycle & Interruption Edge Cases
priority: Medium
status: Draft
tags:
  - requirement
---

## Description
Lifecycle & Interruption Edge Cases covering app termination scenarios.

## Acceptance Criteria
---

* **Scenario 5.1 (App Terminated During OTP Step):** GIVEN OTP was dispatched via `/api/otp/send`, WHEN user force-closes the app and reopens it, THEN if stored `verification_token` is still within expiration timestamp, resume directly on Screen 2 with remaining timer; otherwise, reset to Screen 1.

* **Scenario 5.2 (App Terminated Before Completing Profile):** GIVEN user verified OTP and obtained Bearer token, but closed app before submitting registration, WHEN user reopens the app, THEN app checks session status via token check; if status is `complete_profile`, navigate directly to Screen 3 without re-prompting for OTP.

* **Scenario 5.3 (App Terminated on Bank Account Step):** GIVEN user completed Screen 3 but closed app on Screen 4, WHEN user reopens the app, THEN app detects registration status as `complete_bank_account`, AND opens Screen 4 allowing the user to either submit bank info or tap "تخطي" (Skip).


*Last Updated: {{date}} {{time}}*