---
requirement_id: REQ-TAKAFUL-SUB-001
title: "First-Time Login Subscription Popup"
priority: High
status: Draft
epic_link: "Subscription Management"
tags:
  - requirement
---

## Description
When a customer enters the application for the first time following initial login and location selection, the system shall display a Subscription Popup. When the customer clicks on "اشترك الآن" (Subscribe Now) within the popup, the system shall transition the customer to the personal data completion step.

## Acceptance Criteria

### AC-01 — Subscription Popup Trigger
* **GIVEN** a customer logs in for the first time
* **WHEN** the customer completes the initial location selection step
* **THEN** the system shall display the Subscription Popup.

### AC-02 — "اشترك الآن" Action Transition
* **GIVEN** the Subscription Popup is displayed
* **WHEN** the customer clicks on "اشترك الآن" (Subscribe Now)
* **THEN** the system shall transition the customer to the personal data completion screen (استكمال البيانات الشخصية).

---
*Last Updated: {{date}} {{time}}*
