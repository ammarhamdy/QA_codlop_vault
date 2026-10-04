---
requirement_id: REQ-TAKAFUL-MEM-002
title: "View Current Membership Level on My Card Screen"
priority: High
status: Draft
epic_link: "Membership Management"
tags:
  - requirement
---

## Description
A customer with an active subscription can navigate from the Home screen to the "بطاقتي" (My Card) screen to view their current membership level (**Classic / فضية / ذهبية / ماسية**).

## Acceptance Criteria

### AC-01 — Navigation to My Card Screen
* **GIVEN** an authenticated customer is on the Home screen
* **WHEN** the customer taps on "بطاقتي" (My Card)
* **THEN** the system shall display the "بطاقتي" screen.

### AC-02 — Current Membership Level Display
* **GIVEN** the "بطاقتي" screen is displayed
* **WHEN** the customer has an active subscription
* **THEN** the system shall display the customer's current membership level as one of: **Classic**, **فضية** (Silver), **ذهبية** (Gold), or **ماسية** (Diamond).

---
*Last Updated: {{date}} {{time}}*
