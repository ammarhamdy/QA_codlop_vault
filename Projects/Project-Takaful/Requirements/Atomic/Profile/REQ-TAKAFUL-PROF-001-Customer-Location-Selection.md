---
requirement_id: REQ-TAKAFUL-PROF-001
title: "Customer Location Selection and Geolocation Access"
priority: High
status: Draft
epic_link: "Customer Profile & Onboarding"
tags:
  - requirement
---

## Description
During the onboarding / first-time entry flow, the customer selects their location details hierarchically (City, Area/Region, Neighborhood) and confirms the location. City selection is mandatory. The application prompts for permission to access the customer's device location, allowing the customer to allow or deny access. Upon confirmation, the system records and sends the customer's location data including Latitude and Longitude coordinates before directing the customer to the Home screen (الرئيسية).

> [!NOTE]
> *Context from Scenario:* Location selection step is marked as awaiting confirmation (`انتظار تأكيد العميل`) regarding default values versus mandatory entry.

## Acceptance Criteria

### AC-01 — Mandatory City Selection
* **GIVEN** the customer is on the location selection step
* **WHEN** attempting to proceed without selecting a City (المدينة)
* **THEN** the system shall require the customer to select a City before proceeding.

### AC-02 — Hierarchical Area and Neighborhood Selection
* **GIVEN** the customer has selected a City
* **WHEN** configuring location details
* **THEN** the customer can select the Region/Area (المنطقة) and Neighborhood (الحي)
* **AND** confirm the location selection (تأكيد الموقع).

### AC-03 — Device Location Permission Prompt
* **GIVEN** the location selection flow is initiated
* **WHEN** the application requests access to the customer's device location
* **THEN** the system shall present options to allow or deny location access
* **AND** proceed correctly whether the customer allows or denies permission.

### AC-04 — Location Data Recording and Home Navigation
* **GIVEN** the customer confirms their location
* **WHEN** location data is saved
* **THEN** the system shall record and send location data including Latitude and Longitude coordinates
* **AND** direct the customer to the Home screen (الرئيسية).

---
*Last Updated: {{date}} {{time}}*
