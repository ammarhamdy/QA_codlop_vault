---
us_id: US-018
title: Property Settings2
priority:
  - High
status:
  - in-progress
tags:
  - requirement
---


## Story Description

**As an** Admin  
**I want to** manage the property settings by viewing, adding, editing, deleting, reordering, filtering, searching, and controlling the status of nearby services, payment methods, regions, cities, and districts  
**So that** I can efficiently manage and maintain the location, service, and payment-related data used across the website.

---

# Acceptance Criteria

## Admin

### Nearby Services Management

- **Scenario 1: View Nearby Services**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Nearby Services section
        
    - **Then** I should see the list of all nearby services with their names, icons, and status.
        
- **Scenario 2: View Nearby Services Statistics**
    
    - **Given** I am on the Nearby Services section
        
    - **Then** I should see the total number of nearby services, active services, and inactive services.
        
- **Scenario 3: Add Nearby Service Successfully**
    
    - **Given** I am on the Nearby Services section
        
    - **When** I add a nearby service with a valid name and icon
        
    - **Then** the nearby service should be added successfully and appear in the list.
        
- **Scenario 4: Edit Nearby Service**
    
    - **Given** A nearby service already exists
        
    - **When** I update its name or icon
        
    - **Then** the changes should be saved successfully and reflected in the list.
        
- **Scenario 5: Delete Nearby Service**
    
    - **Given** A nearby service already exists
        
    - **When** I delete the nearby service
        
    - **Then** the nearby service should be permanently removed from the list.
        
- **Scenario 6: Reorder Nearby Services**
    
    - **Given** Multiple nearby services exist
        
    - **When** I change their display order
        
    - **Then** the nearby services should be displayed according to the updated order.
        
- **Scenario 7: Control Nearby Service Status**
    
    - **Given** A nearby service exists
        
    - **When** I change its status
        
    - **Then** the nearby service should be marked as active or inactive accordingly.
        

---

### Payment Methods Management

- **Scenario 8: View Payment Methods**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Payment Methods section
        
    - **Then** I should see the list of all payment methods with their names and status.
        
- **Scenario 9: View Payment Methods Statistics**
    
    - **Given** I am on the Payment Methods section
        
    - **Then** I should see the total number of payment methods, active payment methods, and inactive payment methods.
        
- **Scenario 10: Add Payment Method Successfully**
    
    - **Given** I am on the Payment Methods section
        
    - **When** I add a payment method with a valid name
        
    - **Then** the payment method should be added successfully and appear in the list.
        
- **Scenario 11: Edit Payment Method**
    
    - **Given** A payment method already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully and reflected in the list.
        
- **Scenario 12: Delete Payment Method**
    
    - **Given** A payment method already exists
        
    - **When** I delete the payment method
        
    - **Then** the payment method should be permanently removed from the list.
        
- **Scenario 13: Reorder Payment Methods**
    
    - **Given** Multiple payment methods exist
        
    - **When** I change their display order
        
    - **Then** the payment methods should be displayed according to the updated order.
        
- **Scenario 14: Control Payment Method Status**
    
    - **Given** A payment method exists
        
    - **When** I change its status
        
    - **Then** the payment method should be marked as active or inactive accordingly.
        

---

### Regions Management

- **Scenario 15: View Regions**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Regions section
        
    - **Then** I should see the list of all regions with their names and status.
        
- **Scenario 16: View Regions Statistics**
    
    - **Given** I am on the Regions section
        
    - **Then** I should see the total number of regions, active regions, and inactive regions.
        
- **Scenario 17: Search for a Region**
    
    - **Given** I am on the Regions section
        
    - **When** I search using a region name
        
    - **Then** I should see the regions matching the entered search term.
        
- **Scenario 18: Control Region Status**
    
    - **Given** A region exists
        
    - **When** I change its status
        
    - **Then** the region should be marked as active or inactive accordingly.
        
- **Scenario 19: Paginate Regions**
    
    - **Given** the number of regions exceeds the configured page size
        
    - **When** I navigate between pages
        
    - **Then** I should see the corresponding regions for each page.
        
- **Scenario 20: Change Regions Page Size**
    
    - **Given** I am on the Regions section
        
    - **When** I select a different page size
        
    - **Then** the list should display the selected number of regions per page.
        

---

### Cities Management

- **Scenario 21: View Cities**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Cities section
        
    - **Then** I should see the list of all cities with their associated regions and status.
        
- **Scenario 22: View Cities Statistics**
    
    - **Given** I am on the Cities section
        
    - **Then** I should see the total number of cities, active cities, and inactive cities.
        
- **Scenario 23: Filter Cities by Region**
    
    - **Given** I am on the Cities section
        
    - **When** I select a specific region
        
    - **Then** I should see only the cities associated with the selected region.
        
- **Scenario 24: Search Cities**
    
    - **Given** I am on the Cities section
        
    - **When** I search using a city name and/or region name
        
    - **Then** I should see the cities matching the entered search criteria.
        
- **Scenario 25: Paginate Cities**
    
    - **Given** the number of cities exceeds the configured page size
        
    - **When** I navigate between pages
        
    - **Then** I should see the corresponding cities for each page.
        
- **Scenario 26: Change Cities Page Size**
    
    - **Given** I am on the Cities section
        
    - **When** I select a different page size
        
    - **Then** the list should display the selected number of cities per page.
        
- **Scenario 27: Control City Status**
    
    - **Given** A city exists
        
    - **When** I change its status
        
    - **Then** the city should be marked as active or inactive accordingly.
        

---

### Districts Management

- **Scenario 28: View Districts**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Districts section
        
    - **Then** I should see the list of all districts with their associated region, city, and status.
        
- **Scenario 29: View Districts Statistics**
    
    - **Given** I am on the Districts section
        
    - **Then** I should see the total number of districts, active districts, and inactive districts.
        
- **Scenario 30: Filter Districts by Region**
    
    - **Given** I am on the Districts section
        
    - **When** I select a specific region
        
    - **Then** I should see only the districts associated with the selected region.
        
- **Scenario 31: Filter Districts by City**
    
    - **Given** I am on the Districts section
        
    - **When** I select a specific city
        
    - **Then** I should see only the districts associated with the selected city.
        
- **Scenario 32: Search Districts**
    
    - **Given** I am on the Districts section
        
    - **When** I search using a district name and/or city name
        
    - **Then** I should see the districts matching the entered search criteria.
        
- **Scenario 33: Paginate Districts**
    
    - **Given** the number of districts exceeds the configured page size
        
    - **When** I navigate between pages
        
    - **Then** I should see the corresponding districts for each page.
        
- **Scenario 34: Change Districts Page Size**
    
    - **Given** I am on the Districts section
        
    - **When** I select a different page size
        
    - **Then** the list should display the selected number of districts per page.
        
- **Scenario 35: Control District Status**
    
    - **Given** A district exists
        
    - **When** I change its status
        
    - **Then** the district should be marked as active or inactive accordingly.


