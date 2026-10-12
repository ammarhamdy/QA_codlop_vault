---
us_id: US-012
title: Compare-Products
priority:
  - High
status:
  - todo
tags:
  - requirement
---

# Story Description

## User

**As a** User  
**I want to** add properties to a comparison list, review their details side by side, and manage the comparison list  
**So that** I can easily compare properties and make an informed decision.

---

# Acceptance Criteria

## User

- [ ] **Scenario 1: Add Property to Comparison**
  - **Given** Properties are available
  - **When** I add a property to the comparison list
  - **Then** the property should be added successfully and the comparison badge should display the current number of selected properties.

- [ ] **Scenario 2: Update Comparison Badge Count**
  - **Given** I have properties in the comparison list
  - **When** I add another property
  - **Then** the comparison badge count should increase accordingly.

- [ ] **Scenario 3: Maximum Comparison Limit**
  - **Given** Three properties are already added to the comparison list
  - **When** I try to add another property
  - **Then** the system should prevent adding more than three properties and display an appropriate message.

- [ ] **Scenario 4: View Compared Properties**
  - **Given** I have added one or more properties to the comparison list
  - **When** I open the comparison page
  - **Then** I should see all selected properties displayed side by side with their details.

- [ ] **Scenario 5: Compare Property Details**
  - **Given** Multiple properties are added to the comparison list
  - **When** I view the comparison page
  - **Then** I should be able to compare their information in a structured layout.

- [ ] **Scenario 6: Remove a Property from Comparison**
  - **Given** A property exists in the comparison list
  - **When** I click the remove icon on that property
  - **Then** the property should be removed and the comparison badge count should be updated.

- [ ] **Scenario 7: Clear All Compared Properties**
  - **Given** The comparison list contains one or more properties
  - **When** I click **Clear All**
  - **Then** all compared properties should be removed successfully.

- [ ] **Scenario 8: Display Empty State**
  - **Given** There are no properties in the comparison list
  - **When** I open the comparison page
  - **Then** the system should display the empty state with a message indicating that there are no properties to compare.

- [ ] **Scenario 9: Browse Properties from Empty State**
  - **Given** The comparison list is empty
  - **When** I click **Browse Properties** or **Explore More Properties**
  - **Then** I should be redirected to the properties listing page.

- [ ] **Scenario 10: Persist Comparison List**
  - **Given** I have added properties to the comparison list
  - **When** I refresh the page or navigate back to the comparison page
  - **Then** the previously added properties should remain in the comparison list.

