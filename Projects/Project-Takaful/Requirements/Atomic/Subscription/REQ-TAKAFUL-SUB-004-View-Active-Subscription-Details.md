---
requirement_id: REQ-TAKAFUL-SUB-004
title: "View Current Active Subscription Details"
priority: High
status: Draft
epic_link: "Subscription Management"
tags:
  - requirement
---

## Description
A customer with an active subscription can view their current subscription details by navigating from the Home screen via "المزيد" (More) to "الاشتراكات" (Subscriptions). The screen displays the current package type (Individual or Family), status as Active, subscription start and end dates, subscription amount/price, and the count of family members (for Family packages). For customers with an active subscription, the "اشترك الآن" (Subscribe Now) option must be hidden.

## Acceptance Criteria

### AC-01 — Active Subscription Information Display
* **GIVEN** a customer with an active subscription navigates to "المزيد" -> "الاشتراكات"
* **WHEN** the subscription screen loads
* **THEN** the system shall display the current package type (Individual or Family)
* **AND** show subscription status as **Active**
* **AND** show the subscription start date and end date
* **AND** show the subscription amount/value.

### AC-02 — Family Member Count for Family Packages
* **GIVEN** the active subscription is a Family Package
* **WHEN** viewing subscription details
* **THEN** the system shall display the registered count of family members.

### AC-03 — Suppression of "اشترك الآن" for Active Subscribers
* **GIVEN** the customer currently has an Active subscription
* **WHEN** viewing the subscriptions section
* **THEN** the option "اشترك الآن" (Subscribe Now) shall NOT be displayed.

---
*Last Updated: {{date}} {{time}}*
