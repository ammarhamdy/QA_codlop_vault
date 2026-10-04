---
requirement_id: REQ-TAKAFUL-PROF-002
title: "Optional Personal Profile Data Completion"
priority: Medium
status: Draft
epic_link: "Customer Profile & Onboarding"
tags:
  - requirement
---

## Description
During the onboarding / profile completion step following the subscription popup, the customer is presented with personal data fields: Name (الاسم), Passport Number (رقم جواز السفر), National ID (الرقم القومي), and Photo upload (الصورة). All personal data fields are strictly optional, and the customer can either fill them in or proceed directly to package selection without entering any personal data.

## Acceptance Criteria

### AC-01 — Display Personal Data Fields
* **GIVEN** the customer navigates to the personal data completion step (استكمال البيانات الشخصية)
* **WHEN** the screen loads
* **THEN** the system shall display fields for Name (الاسم), Passport Number (رقم جواز السفر), National ID (الرقم القومي), and Photo upload (الصورة).

### AC-02 — Optional Entry and Progression
* **GIVEN** the customer chooses not to enter some or all personal data
* **WHEN** the customer attempts to proceed
* **THEN** the system shall allow the customer to continue without validation errors
* **AND** transition the customer to the subscription package selection step.

### AC-03 — Submitting Provided Personal Data
* **GIVEN** the customer inputs valid personal data (name, passport number, national ID, and/or photo)
* **WHEN** the customer submits the step
* **THEN** the system shall save the provided data to the customer's profile
* **AND** transition the customer to the subscription package selection step.

---
*Last Updated: {{date}} {{time}}*
