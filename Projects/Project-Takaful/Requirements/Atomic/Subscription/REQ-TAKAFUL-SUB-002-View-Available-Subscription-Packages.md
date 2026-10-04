---
requirement_id: REQ-TAKAFUL-SUB-002
title: "View Available Subscription Packages and Details"
priority: High
status: Draft
epic_link: "Subscription Management"
tags:
  - requirement
---

## Description
A registered customer without an active subscription can browse available subscription packages from the Home screen by clicking "المزيد" (More) and then selecting "الاشتراكات" (Subscriptions). The system displays available packages: Individual Package (الباقة الفردية) and Family Package (الباقة العائلية). The customer can view package details including price, features, and allowed number of members, and initiate subscription via "اشترك الآن" (Subscribe Now).

## Acceptance Criteria

### AC-01 — Navigation to Available Packages
* **GIVEN** a registered customer is on the Home screen
* **WHEN** the customer taps "المزيد" (More) and selects "الاشتراكات" (Subscriptions)
* **THEN** the system shall display the available subscription packages list containing the Individual Package (الباقة الفردية) and Family Package (الباقة العائلية).

### AC-02 — Package Details Display
* **GIVEN** the available subscription packages are listed
* **WHEN** the customer views the details of a package
* **THEN** the system shall display the package price, features/benefits, and the allowed number of members (for the Family Package).

### AC-03 — Initiation of Subscription Flow
* **GIVEN** a customer is viewing package details
* **WHEN** the customer clicks on "اشترك الآن" (Subscribe Now)
* **THEN** the system shall transition the customer to complete the subscription flow.

---
*Last Updated: {{date}} {{time}}*
