---
requirement_id: REQ-004
title: Bank Account Form & Skip Logic
priority: Medium
status: Draft
tags:
  - requirement
---

## Description
Optional step to add financial payout details.

## Acceptance Criteria
---

* **Auth Header:** `Authorization: Bearer <token>`

* **Payload:** `holder_name`, `account_number`, `iban`, `bank_name`.

* **Scenario 4.1 (Save Bank Account):** GIVEN user is on Screen 4, WHEN user enters all bank details and clicks "حفظ الحساب البنكي" (Save), THEN system executes `POST /api/bank-accounts`, AND returns HTTP 200 with `"is_main": true`, AND routes user to the Main Dashboard / Pending Approval Screen depending on `is_approved`.

* **Scenario 4.2 (Skip Bank Account):** GIVEN user is on Screen 4, WHEN user clicks "تخطي" (Skip), THEN system bypasses the `/api/bank-accounts` endpoint entirely, AND immediately navigates the user to the ~~Main Dashboard~~ / Pending Approval Screen.

*Last Updated: {{date}} {{time}}*