---
us_id: US-005
title: Client Service Request
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description
**As a** Client 
**I want to** submit a service request through the website Request service page  
**So that** I can request a specific service and receive feedback and approval from the system administrators.

**As an** Administrator  
**I want to** view, evaluate, and manage submitted service requests in the admin dashboard  
**So that** I can approve or reject requests based on their validity and relevance

## Acceptance Criteria
- [ ] - [ ] **Scenario 1:** Given I am on the Service Request page  
When I fill in all required fields with valid data (Name, Mobile Number, Email, Service Type, Target Audience, Request Details)  
And I click "Submit Request"  
Then the system should successfully validate and submit the request  
And display a success confirmation message  
And store the request for administrator review  

- [ ] **Scenario 2:** Given I am on the Service Request page  
When I submit the form with one or more required fields empty  
Then the system should display validation messages for the missing fields  
And prevent form submission  

- [ ] **Scenario 3:** Given I am on the Service Request page  
When I enter an invalid email format  
Then the system should display an email validation error  
And prevent form submission  

- [ ] **Scenario 4:** Given I am on the Service Request page  
When I enter an invalid mobile number format  
Then the system should display a phone validation error  
And prevent form submission  

- [ ] **Scenario 5:** Given I am on the Service Request page  
When I select a Service Type from the dropdown  
Then the selected value should be saved with the request  

- [ ] **Scenario 6:** Given I am on the Service Request page  
When I select a Target Audience from the dropdown  
Then the selected value should be saved with the request  

- [ ] **Scenario 7:** Given I am on the Service Request page  
When I leave the Request Details field empty  
Then the system should display a required field validation message  
And prevent submission  

- [ ] **Scenario 8:** Given I am logged in as an administrator  
When I navigate to the Service Requests dashboard  
Then I should be able to view all submitted requests  

- [ ] **Scenario 9:** Given I am reviewing a service request  
When I update the request status  
Then the status should be updated successfully  
And the change should be recorded  

- [ ] **Scenario 10:** Given a service request already exists with the same email and service type  
When another identical request is submitted  
Then the system should prevent duplicate submission  

- [ ] **Scenario 11:** Given I have entered valid data  
When a system error occurs during submission  
Then the system should display an error message  
And no duplicate or partial data should be saved  


