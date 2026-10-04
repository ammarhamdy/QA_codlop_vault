---
requirement_id: REQ-TAKAFUL-MEM-001
title: "Initial Classic Membership Level on Subscription Activation"
priority: High
status: Draft
epic_link: "Membership Management"
tags:
  - requirement
---

## Description
Upon successful activation of a new subscription following verified payment, the system shall initialize and assign the customer's membership tier to **Classic**.

## Acceptance Criteria

### AC-01 — Automatic Classic Assignment on New Activation
* **GIVEN** a new subscription payment is verified successfully
* **WHEN** the subscription is activated
* **THEN** the system shall set the customer's membership level to **Classic**.

### AC-02 — Classic Level Visibility
* **GIVEN** a new subscription is activated with Classic level
* **WHEN** the customer views their profile or membership status (such as on the "بطاقتي" screen)
* **THEN** the system shall reflect **Classic** as the current active membership tier.

---
*Last Updated: {{date}} {{time}}*
