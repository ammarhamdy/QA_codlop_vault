---
us_id: US-010
title: Property-Offers
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description
# Story Description

## Admin

**As an** Admin  
**I want to** manage property offers by viewing, adding, editing, deleting, searching, changing their status, and managing offer types  
**So that** I can efficiently manage promotional offers for properties.

---

# Acceptance Criteria

## Admin

- [ ] **Scenario 1: View Property Offers**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Property Offers page
  - **Then** I should see the list of all property offers with their details and status.

- [ ] **Scenario 2: Add Property Offer Successfully**
  - **Given** I am on the Property Offers page
  - **When** I add a property offer with valid required information
  - **Then** the property offer should be added successfully and appear in the offers list.

- [ ] **Scenario 3: Select Property**
  - **Given** Properties exist in the system
  - **When** I select a property while creating a property offer
  - **Then** the selected property should be linked to the property offer.

- [ ] **Scenario 4: Select Offer Type**
  - **Given** Offer types exist in the system
  - **When** I select an offer type
  - **Then** the selected offer type should be assigned to the property offer.

- [ ] **Scenario 5: Configure Manual Pricing**
  - **Given** I am creating or editing a property offer
  - **When** I select the pricing method as **Manual**
  - **Then** I should be able to enter the price before and the price after the discount.

- [ ] **Scenario 6: Configure Fixed Amount Discount**
  - **Given** I am creating or editing a property offer
  - **When** I select the pricing method as **Fixed Amount**
  - **Then** I should be able to enter the original price and the discount amount.

- [ ] **Scenario 7: Configure Percentage Discount**
  - **Given** I am creating or editing a property offer
  - **When** I select the pricing method as **Percentage**
  - **Then** I should enter the discount percentage and the system should automatically calculate the discounted price.

- [ ] **Scenario 8: Edit Property Offer**
  - **Given** A property offer already exists
  - **When** I update the property offer information
  - **Then** the changes should be saved successfully.

- [ ] **Scenario 9: Delete Property Offer**
  - **Given** A property offer already exists
  - **When** I delete the property offer
  - **Then** the property offer should be removed from the offers list.

- [ ] **Scenario 10: Search Property Offers**
  - **Given** Property offers exist in the system
  - **When** I search for a property offer
  - **Then** only the matching property offer(s) should be displayed.

- [ ] **Scenario 11: Change Property Offer Status**
  - **Given** A property offer exists
  - **When** I change its status
  - **Then** the property offer status should be updated successfully.

- [ ] **Scenario 12: Pagination**
  - **Given** Multiple property offers exist
  - **When** I navigate between pages
  - **Then** the corresponding page of property offers should be displayed correctly.

- [ ] **Scenario 13: Change Page Size**
  - **Given** The property offers list is displayed
  - **When** I select a different page size
  - **Then** the number of displayed property offers per page should match the selected page size.

- [ ] **Scenario 14: View Offer Types**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Offer Types page
  - **Then** I should see the list of all offer types.

- [ ] **Scenario 15: Add Offer Type Successfully**
  - **Given** I am on the Offer Types page
  - **When** I add an offer type with valid required information
  - **Then** the offer type should be added successfully.

- [ ] **Scenario 16: Edit Offer Type**
  - **Given** An offer type already exists
  - **When** I update its information
  - **Then** the changes should be saved successfully.

- [ ] **Scenario 17: Delete Offer Type**
  - **Given** An offer type already exists
  - **When** I delete it
  - **Then** it should be removed from the offer types list.

- [ ] **Scenario 18: Search Offer Types**
  - **Given** Offer types exist in the system
  - **When** I search for an offer type
  - **Then** only the matching offer type(s) should be displayed.

