---
requirement_id: REQ-TAKAFUL-MEM-003
title: "Expired Membership State and Renewal Option on My Card Screen"
priority: High
status: Draft
epic_link: "Membership Management"
tags:
  - requirement
---

## Description
When a customer's subscription expires, navigating to "بطاقتي" (My Card) from the Home screen displays the membership level held prior to expiration (Classic, Silver, Gold, or Diamond). The membership symbol is displayed with a stopped/inactive status (حالة متوقفة). The customer cannot benefit from package perks while the membership is stopped. The screen provides the "تجديد العضوية" (Renew Membership) option to allow the customer to proceed to renewal.

## Acceptance Criteria

### AC-01 — Retention of Prior Membership Level
* **GIVEN** a customer with an expired subscription navigates to "بطاقتي" (My Card)
* **WHEN** the screen is loaded
* **THEN** the system shall retain and display the membership level that the customer held before expiration (Classic / فضية / ذهبية / ماسية).

### AC-02 — Stopped Membership Status and Benefits Lock
* **GIVEN** a customer's subscription has expired
* **WHEN** viewing "بطاقتي"
* **THEN** the system shall show the membership status/symbol as stopped (متوقفة)
* **AND** prevent the customer from utilizing subscription package benefits until renewal is completed.

### AC-03 — Display "تجديد العضوية" Option
* **GIVEN** a customer with an expired subscription is on "بطاقتي" screen
* **WHEN** viewing the stopped membership
* **THEN** the system shall display the "تجديد العضوية" (Renew Membership) action.

---
*Last Updated: {{date}} {{time}}*
