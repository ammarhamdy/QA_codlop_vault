---
requirement_id: REQ-TAKAFUL-AUTH-001
title: "Customer Login and Redirection to Home Screen"
priority: High
status: Draft
epic_link: "Customer Authentication"
tags:
  - requirement
---

## Description
When a registered customer logs in successfully using valid credentials, the system shall authenticate the customer and redirect them directly to the application Home screen (الرئيسية). 
This redirection applies across all customer subscription states (customer without subscription, customer with active subscription, and customer with expired subscription).

## Acceptance Criteria

### AC-01 — Successful Authentication and Redirection
* **GIVEN** a registered customer provides valid login credentials
* **WHEN** the authentication is successful
* **THEN** the system shall establish an authenticated session for the customer
* **AND** redirect the customer directly to the Home screen (الرئيسية).

### AC-02 — Direct Home Screen Navigation Across Subscription States
* **GIVEN** a customer logs in successfully
* **WHEN** the customer has no subscription, an active subscription, or an expired subscription
* **THEN** the system shall direct the customer to the Home screen (الرئيسية) without unnecessary intermediate blocking screens.

---
*Last Updated: {{date}} {{time}}*
