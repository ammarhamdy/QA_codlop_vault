---
us_id: US-014
title: Contracts
priority:
  - High
status:
  - todo
tags:
  - requirement
---

# Story Description
**As an** Admin  
**I want to** manage contracts, financial clauses, and terms and conditions by viewing, adding, editing, deleting, searching, and reviewing contract information  
**So that** I can create and maintain complete and accurate sale and rental contracts and manage their related financial and legal information.

---

# Acceptance Criteria

## Admin - Contracts

- **Scenario 1: View Contracts**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Contracts page
        
    - **Then** I should see the list of all contracts with their details.
        
- **Scenario 2: Add Contract Successfully**
    
    - **Given** I am on the Contracts page
        
    - **When** I add a contract with valid required information
        
    - **Then** the contract should be added successfully and appear in the contracts list.
        
- **Scenario 3: Select Contract Type**
    
    - **Given** I am adding a new contract
        
    - **When** I select the contract type
        
    - **Then** I should be able to select either Sale or Rental.
        
- **Scenario 4: Select Property for Rental Contract**
    
    - **Given** I am adding a Rental contract
        
    - **When** I proceed to the property selection step
        
    - **Then** selecting a property should be mandatory.
        
- **Scenario 5: Update Property Status**
    
    - **Given** I am adding a Rental contract
        
    - **When** I select a property
        
    - **Then** the property status should be updated to Rented or Reserved according to the defined business rules.
        
- **Scenario 6: Enter Contract Basic Information**
    
    - **Given** I am adding a contract
        
    - **When** I enter the required contract information
        
    - **Then** I should be able to enter the contract date, contract location, rental start date, rental end date, payment frequency, and payment start date as applicable.
        
- **Scenario 7: Add Contract Parties**
    
    - **Given** I am adding a contract
        
    - **When** I proceed to the contract parties step
        
    - **Then** I should be required to add the two contract parties.
        
- **Scenario 8: Add Property Details**
    
    - **Given** I am adding a contract
        
    - **When** I proceed to the property details step
        
    - **Then** the selected property's details should be displayed correctly.
        
- **Scenario 9: Enter Financial Information**
    
    - **Given** I am adding a Rental contract
        
    - **When** I enter the required financial information
        
    - **Then** I should be able to enter the total rental value.
        
- **Scenario 10: Add Contract Attachments**
    
    - **Given** I am adding a contract
        
    - **When** I upload valid attachments
        
    - **Then** the attachments should be uploaded successfully and associated with the contract.
        
- **Scenario 11: Review Contract**
    
    - **Given** I have entered all required contract information
        
    - **When** I navigate to the Review Contract step
        
    - **Then** I should see a summary of all contract information before submitting the contract.
        
- **Scenario 12: Submit Contract**
    
    - **Given** I have reviewed all contract information
        
    - **When** I submit the contract
        
    - **Then** the contract should be created successfully and appear in the contracts list.
        
- **Scenario 13: Edit Contract**
    
    - **Given** A contract already exists
        
    - **When** I update the contract information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 14: Delete Contract**
    
    - **Given** A contract already exists
        
    - **When** I delete the contract
        
    - **Then** the contract should be removed successfully from the contracts list.
        
- **Scenario 15: Search Contracts**
    
    - **Given** Contracts exist in the system
        
    - **When** I search using the available contract information
        
    - **Then** only the matching contract(s) should be displayed.
        
- **Scenario 16: Pagination**
    
    - **Given** Multiple contracts exist
        
    - **When** I navigate between pages
        
    - **Then** the corresponding page of contracts should be displayed correctly.
        
- **Scenario 17: Change Page Size**
    
    - **Given** The contracts list is displayed
        
    - **When** I select a different page size
        
    - **Then** the number of displayed contracts should match the selected page size.
        

---

## Admin - Financial Items

- **Scenario 18: View Financial items
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Financial item page
        
    - **Then** I should see the list of all financial items with their details.
        
- **Scenario 19: Add Financial item Successfully**
    
    - **Given** I am on the Financial items page
        
    - **When** I add a financial clause with valid required information
        
    - **Then** the financial clause should be added successfully and appear in the financial items list.
        
- **Scenario 20: Edit Financial item
    
    - **Given** A financial item already exists
        
    - **When** I update the financial item information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 21: Delete Financial item
    
    - **Given** A financial item already exists
        
    - **When** I delete the financial item
        
    - **Then** the financial item should be removed successfully from the financial items list.
        
- **Scenario 22: Search Financial items**
    
    - **Given** Financial items exist in the system
        
    - **When** I search using the financial item information
        
    - **Then** only the matching financial item(s) should be displayed.
        
- **Scenario 23: Pagination**
    
    - **Given** Multiple financial items exist
        
    - **When** I navigate between pages
        
    - **Then** the corresponding page of financial items should be displayed correctly.
        
- **Scenario 24: Change Page Size**
    
    - **Given** The financial items list is displayed
        
    - **When** I select a different page size
        
    - **Then** the number of displayed financial clauses should match the selected page size.
        

---

## Admin - Terms & Conditions

- **Scenario 25: View Terms & Conditions**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Terms & Conditions page
        
    - **Then** I should see the existing terms and conditions.
        
- **Scenario 26: Add Terms & Conditions**
    
    - **Given** I am on the Terms & Conditions page
        
    - **When** I add valid terms and conditions
        
    - **Then** the terms and conditions should be added successfully.
        
- **Scenario 27: Edit Terms & Conditions**
    
    - **Given** Terms and conditions already exist
        
    - **When** I update the terms and conditions
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 28: Delete Terms & Conditions**
    
    - **Given** Terms and conditions already exist
        
    - **When** I delete the terms and conditions
        
    - **Then** the terms and conditions should be removed successfully.
        
