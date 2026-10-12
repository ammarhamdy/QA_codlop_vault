---
us_id: US-003
title: Request Your Property
priority:
  - High
status:
  - todo
tags:
  - requirement
---
# Request Your Property

## Story Description

**As a** Client

**I want to** submit a property request by filling out the "Request Your Property" form

**So that** I can send my property requirements to the platform for review.

**As a** CMS Administrator

**I want to** view and manage property requests

**So that** I can review submitted requests and update their processing status.

## Acceptance Criteria

- [ ] **Scenario 1: Submit Property Request Successfully**
    - **Given** I am on the Request Your Property page
    - **When** I complete all required fields with valid information and submit the form
    - **Then** my property request should be submitted successfully.

- [ ] **Scenario 2: Required Fields Validation**
    - **Given** I am on the Request Your Property page
    - **When** I submit the form with one or more required fields left empty
    - **Then** the system should display validation messages and prevent form submission.

- [ ] **Scenario 3: Phone Number Validation**
    - **Given** I am filling out the request form
    - **When** I enter an invalid phone number
    - **Then** the system should display a validation message and prevent form submission.

- [ ] **Scenario 4: Property Category & Property Type Selection**
    - **Given** I am filling out the request form
    - **When** I select a Property Category and Property Type
    - **Then** the selected values should be accepted successfully.

- [ ] **Scenario 5: Area Range Selection**
    - **Given** I am filling out the request form
    - **When** I enter or select the minimum and maximum area
    - **Then** the selected area range should be accepted according to the system rules.

- [ ] **Scenario 6: Location Selection**
    - **Given** I am filling out the request form
    - **When** I select the Region, City, and Neighborhood
    - **Then** the selected location should be saved successfully with the request.

- [ ] **Scenario 7: Optional Fields**
    - **Given** I am filling out the request form
    - **When** I leave the optional fields (WhatsApp Number, Area Range, Additional Features, Nearby Services, Property Facades, and Additional Notes) empty
    - **Then** I should still be able to submit the request successfully.

- [ ] **Scenario 8: Invalid Data Validation**
    - **Given** I am filling out the request form
    - **When** I enter invalid values in one or more fields
    - **Then** the system should display the appropriate validation messages and prevent form submission.

- [ ] **Scenario 9: View Property Requests (CMS Admin)**
    - **Given** property requests have been submitted by clients
    - **When** I open the Property Requests page in the CMS
    - **Then** I should see all submitted property requests.

- [ ] **Scenario 10: View Property Request Details (CMS Admin)**
    - **Given** property requests exist
    - **When** I open a specific property request
    - **Then** I should be able to view all submitted request details.

- [ ] **Scenario 11: Update Property Request Status (CMS Admin)**
    - **Given** a property request exists
    - **When** I update its status (e.g., New, In Progress, Closed)
    - **Then** the new status should be saved successfully.

- [ ] **Scenario 12: Filter Property Requests by Status (CMS Admin)**
    - **Given** property requests with different statuses exist
    - **When** I filter the requests by status
    - **Then** only requests matching the selected status should be displayed.