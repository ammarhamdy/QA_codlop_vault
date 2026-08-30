---
requirement_id: REQ-003
title: Dynamic Role-Based Profile Completion
priority: High
status: Draft
tags:
  - requirement
---

## Description
Complete account details dynamically mapped to the user type selected in Step 1.

## Acceptance Criteria
---

* **Auth Header:** `Authorization: Bearer <token>`

* **Field Mapping by User Type:**
  * **Customer (`id: 1`):** `name`, `address`, `latitude`, `longitude`.
  * **Place Owner (`id: 2`):** `name`, `address`, `latitude`, `longitude`, `commercial_register`, `tax_number`.
  * **Service Provider (`id: 4`):** `name`, `address`, `latitude`, `longitude`, `commercial_register`, `tax_number`, `service_provider_type`.

* **Scenario 3.1 (Customer Submission):** GIVEN an authenticated user with `user_type_id: 1`, WHEN submitting `name`, `address`, `latitude`, and `longitude`, THEN system returns `"status": "complete_bank_account"` with `"is_approved": true`, AND routes user to Screen 4 (Bank Account Screen).

* **Scenario 3.2 (Owner Submission):** GIVEN an authenticated user with `user_type_id: 2`, WHEN submitting `name`, `address`, `latitude`, `longitude`, `commercial_register`, and `tax_number`, THEN system returns `"status": "complete_bank_account"` with `"is_approved": false`, AND routes user to Screen 4.

* **Scenario 3.3 (Service Provider Submission):** GIVEN an authenticated user with `user_type_id: 4`, WHEN submitting `name`, `address`, `latitude`, `longitude`, `commercial_register`, `tax_number`, and `service_provider_type`, THEN system returns `"status": "complete_bank_account"` with `"is_approved": false`, AND routes user to Screen 4.

*Last Updated: {{date}} {{time}}*