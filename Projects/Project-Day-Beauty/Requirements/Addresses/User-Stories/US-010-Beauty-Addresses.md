---
us_id: US-010
title: Addresses
priority:
  - High
status:
  - todo
tags:
  - requirement
---
## Story Description

**As a Customer**  
**I want to** manage my saved addresses by viewing, adding, editing, and deleting addresses  
**So that** I can easily maintain accurate delivery addresses and use them during checkout.

## Acceptance Criteria

### **Address Management**

-  **Scenario 1: View Saved Addresses**
    
    - **Given** I am logged in
        
    - **When** I open the **Addresses** page
        
    - **Then** all my saved addresses should be displayed successfully.
        
-  **Scenario 2: Add a New Address**
    
    - **Given** I am on the **Addresses** page
        
    - **When** I tap **Add New Address**
        
    - **Then** the application should prompt me to enable location services if they are disabled.
        
-  **Scenario 3: Enable Location Services**
    
    - **Given** location services are disabled
        
    - **When** I enable location services
        
    - **Then** I should be able to continue adding a new address.
        
-  **Scenario 4: Confirm Current Location**
    
    - **Given** location services are enabled
        
    - **When** I confirm my current location
        
    - **Then** the address form should be displayed.
        
-  **Scenario 5: Select Country**
    
    - **Given** the address form is displayed
        
    - **When** I select a country from the country list
        
    - **Then** the selected country should be displayed successfully.
        
-  **Scenario 6: Select City**
    
    - **Given** I have selected a country
        
    - **When** I select a city from the city list
        
    - **Then** the selected city should be displayed successfully.
        
-  **Scenario 7: Add Address Details**
    
    - **Given** the address form is displayed
        
    - **When** I enter the district, street name, national address, and tap **Add**
        
    - **Then** the address should be saved successfully and appear in the address list.
        
-  **Scenario 8: Edit a Saved Address**
    
    - **Given** I have at least one saved address
        
    - **When** I edit the address information and tap **Save**
        
    - **Then** the address should be updated successfully.
        
-  **Scenario 9: Delete a Saved Address**
    
    - **Given** I have at least one saved address
        
    - **When** I delete the address and confirm the action
        
    - **Then** the address should be removed from the address list successfully.
        
-  **Scenario 10: Cancel Address Deletion**
    
    - **Given** I have initiated deleting an address
        
    - **When** I cancel the confirmation dialog
        
    - **Then** the address should remain in the address list.
        
-  **Scenario 11: Display Updated Address List**
    
    - **Given** I have added, edited, or deleted an address
        
    - **When** I open the **Addresses** page
        
    - **Then** the address list should display the latest saved addresses.