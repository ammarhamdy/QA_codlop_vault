---
us_id: US-009
title: Properties
priority:
  - High
status:
  - todo
tags:
  - requirement
---
## Story Description

### Admin

**As an** Admin
**I want to** manage properties by viewing, adding, editing, deleting, searching, filtering, changing their activation status, and updating their availability status
**So that** I can efficiently manage all property listings.

**As a** User
**I want to** browse properties, view property details, search, sort, and filter properties
**So that** I can easily find properties that match my needs.

---

## Acceptance Criteria

### Admin

- [ ] **Scenario 1: View Properties**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Properties page
  - **Then** I should see the list of all properties with their details, activation status, and availability status.

- [ ] **Scenario 2: Add Property Successfully**
  - **Given** I am on the Properties page
  - **When** I add a property with valid required information
  - **Then** the property should be added successfully and appear in the properties list.

- [ ] **Scenario 3: Edit Property**
  - **Given** A property already exists
  - **When** I update the property's information
  - **Then** the changes should be saved successfully.

- [ ] **Scenario 4: Delete Property**
  - **Given** A property already exists
  - **When** I delete the property
  - **Then** the property should be removed from the properties list.

- [ ] **Scenario 5: Search Properties**
  - **Given** Properties exist in the system
  - **When** I search for a property
  - **Then** only the matching property(ies) should be displayed.

- [ ] **Scenario 6: Filter Properties**
  - **Given** Properties exist in the system
  - **When** I apply one or more filters
  - **Then** only the matching properties should be displayed.

- [ ] **Scenario 7: Activate Property**
  - **Given** A property is inactive
  - **When** I change its status to Active
  - **Then** the property's activation status should be updated successfully.

- [ ] **Scenario 8: Deactivate Property**
  - **Given** A property is active
  - **When** I change its status to Inactive
  - **Then** the property's activation status should be updated successfully.

- [ ] **Scenario 9: Change Property Availability**
  - **Given** A property exists
  - **When** I change its availability status to Available, Reserved, Sold, or Rented
  - **Then** the property's availability status should be updated successfully.

---

### User

- [ ] **Scenario 10: Browse Properties**
  - **Given** Active properties are available
  - **When** I open the Properties page
  - **Then** I should see all active properties.

- [ ] **Scenario 11: View Property Details**
  - **Given** A property exists
  - **When** I open the property details page
  - **Then** I should see all property information.

- [ ] **Scenario 12: Search Properties**
  - **Given** Properties are available
  - **When** I search for a property
  - **Then** only the matching properties should be displayed.

- [ ] **Scenario 13: Sort Properties**
  - **Given** Properties are displayed
  - **When** I sort by Newest, Lowest Price, Highest Price, Largest Area, or Smallest Area
  - **Then** the properties should be displayed according to the selected sorting option.

- [ ] **Scenario 14: Filter Properties**
  - **Given** Properties are displayed
  - **When** I apply one or more filters such as Property Purpose, City, Location, Property Type, Price Range, Area Range, Number of Rooms, Number of Bathrooms, or Offers
  - **Then** only the properties matching the selected filters should be displayed.

