---
us_id: US-004
title: Broker Join Request
priority:
  - High
status:
  - todo
tags:
  - requirement
---


## Story Description

**As a** Client

**I want to** submit a broker join request by filling out the "Join as a Broker" form

**So that** I can apply to become a broker on the platform.

**As a** CMS Administrator

**I want to** view and manage broker join requests

**So that** I can review applications and update their status.

## Acceptance Criteria

- [ ] **Scenario 1: Submit Broker Join Request Successfully**
    - **Given** I am on the "Join as a Broker" form
    - **When** I complete all required fields with valid information and submit the form
    - **Then** my broker join request should be submitted successfully.

- [ ] **Scenario 2: Required Fields Validation**
    - **Given** I am on the "Join as a Broker" form
    - **When** I submit the form with one or more required fields left empty
    - **Then** the system should display validation messages for the required fields and prevent form submission.

- [ ] **Scenario 3: Identity Number Validation**
    - **Given** I am filling out the broker request form
    - **When** I enter an invalid Identity Number
    - **Then** the system should display a validation message and prevent form submission.

- [ ] **Scenario 4: Identity Type Selection**
    - **Given** I am filling out the broker request form
    - **When** I select an Identity Type
    - **Then** the selected value should be accepted successfully.

- [ ] **Scenario 5: Optional Fields**
    - **Given** I am filling out the broker request form
    - **When** I leave the optional fields (Commercial Registration Number, Nationality, National Address, and Tax Number) empty
    - **Then** I should still be able to submit the request successfully if all required fields are completed.

- [ ] **Scenario 6: Invalid Data Validation**
    - **Given** I am filling out the broker request form
    - **When** I enter invalid values in one or more fields
    - **Then** the system should display the appropriate validation messages and prevent form submission.

- [ ] **Scenario 7: View Broker Join Requests (CMS Admin)**
    - **Given** broker join requests have been submitted
    - **When** I open the Broker Join Requests page in the CMS
    - **Then** I should see all submitted broker requests.

- [ ] **Scenario 8: View Broker Join Request Details (CMS Admin)**
    - **Given** broker join requests exist
    - **When** I open a specific broker request
    - **Then** I should be able to view all submitted information.

- [ ] **Scenario 9: Update Broker Join Request Status (CMS Admin)**
    - **Given** a broker join request exists
    - **When** I change its status (e.g., New, Under Review, Approved, or Rejected)
    - **Then** the updated status should be saved successfully.

- [ ] **Scenario 10: Filter Broker Join Requests by Status (CMS Admin)**
    - **Given** broker join requests with different statuses exist
    - **When** I filter the requests by status
    - **Then** only requests matching the selected status should be displayed.