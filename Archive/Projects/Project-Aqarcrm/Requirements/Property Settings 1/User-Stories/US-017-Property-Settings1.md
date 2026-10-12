---
us_id: US-017
title: Property-Settings
priority:
  - High
status:
  - todo
tags:
  - requirement
---

# Story Description

## Admin

**As an** Admin  
**I want to** manage the property settings by viewing, adding, editing, deleting, reordering, and controlling the status of property purposes, classifications, property facades, property features, property statuses, and property amenities  
**So that** I can efficiently manage and maintain the property-related data used across the website.

---

# Acceptance Criteria

## Admin

### Property Purpose Management

- **Scenario 1: View Property Purposes**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Property Purposes section
        
    - **Then** I should see the list of all property purposes with their details and status.
        
- **Scenario 2: View Property Purpose Statistics**
    
    - **Given** I am on the Property Purposes section
        
    - **Then** I should see the total number of property purposes, active purposes, and inactive purposes.
        
- **Scenario 3: Add Property Purpose Successfully**
    
    - **Given** I am on the Property Purposes section
        
    - **When** I add a property purpose with a valid name, color, and property status configuration
        
    - **Then** the property purpose should be added successfully and appear in the list.
        
- **Scenario 4: Configure Property Purpose Statuses**
    
    - **Given** I am adding or editing a property purpose
        
    - **When** I configure the property statuses
        
    - **Then** I should be able to either apply the purpose to all property statuses by default or select specific property statuses.
        
- **Scenario 5: Edit Property Purpose**
    
    - **Given** A property purpose already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 6: Delete Property Purpose**
    
    - **Given** A property purpose already exists
        
    - **When** I delete the property purpose
        
    - **Then** the property purpose should be permanently removed from the list.
        

---

### Property Categories Management

- **Scenario 7: View Property Categories**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Property Categories section
        
    - **Then** I should see the list of all property classifications with their details and status.
        
- **Scenario 8: View Property Categories Statistics**
    
    - **Given** I am on the Property Categories section
        
    - **Then** I should see the total number of Categories, active Categories, and inactive Categories.
        
- **Scenario 9: Add Property Category Successfully**
    
    - **Given** I am on the Property Categories section
        
    - **When** I add a Category with a valid name
        
    - **Then** the Category should be added successfully and appear in the list.
        
- **Scenario 10: Edit Property Category**
    
    - **Given** A property Category already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 11: Reorder Property Categories**
    
    - **Given** Multiple property Categories exist
        
    - **When** I change their display order
        
    - **Then** the Categories should be displayed according to the updated order.
        
- **Scenario 12: Delete Property Category**
    
    - **Given** A property Category already exists
        
    - **When** I delete the Category
        
    - **Then** the Category should be permanently removed from the list.
        

---

### Property Facade Management

- **Scenario 13: View Property Facades**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Property Facades section
        
    - **Then** I should see the list of all property facades with their details and status.
        
- **Scenario 14: View Property Facade Statistics**
    
    - **Given** I am on the Property Facades section
        
    - **Then** I should see the total number of facades, active facades, and inactive facades.
        
- **Scenario 15: Add Property Facade Successfully**
    
    - **Given** I am on the Property Facades section
        
    - **When** I add a property facade with a valid name
        
    - **Then** the property facade should be added successfully and appear in the list.
        
- **Scenario 16: Edit Property Facade**
    
    - **Given** A property facade already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 17: Delete Property Facade**
    
    - **Given** A property facade already exists
        
    - **When** I delete the property facade
        
    - **Then** the property facade should be permanently removed from the list.
        

---

### Property Attribute Management

- **Scenario 18: View Property Attributes**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Property Attributes section
        
    - **Then** I should see the list of all property Attributes with their details and status.
        
- **Scenario 19: View Property Attribute Statistics**
    
    - **Given** I am on the Property Attributes section
        
    - **Then** I should see the total number of Attributes, active features, and inactive Attributes.
        
- **Scenario 20: Filter Property Attributes by Property Type**
    
    - **Given** I am on the Property Attributes section
        
    - **When** I filter the Attributes by a specific property type
        
    - **Then** I should see only the features associated with the selected property type.
        
- **Scenario 21: Add Property Attribute Successfully**
    
    - **Given** I am on the Property Attributes section
        
    - **When** I select a property type and enter a valid Attribute name
        
    - **Then** the property Attribute should be added successfully and appear in the list.
        
- **Scenario 22: Edit Attribute Feature**
    
    - **Given** A property Attribute already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 23: Delete Property Attribute**
    
    - **Given** A property Attribute already exists
        
    - **When** I delete the property Attribute
        
    - **Then** the property Attribute should be permanently removed from the list.
        

---

### Property Status Management

- **Scenario 24: View Property Statuses**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Property Statuses section
        
    - **Then** I should see the list of all property statuses with their details and status.
        
- **Scenario 25: View Property Status Statistics**
    
    - **Given** I am on the Property Statuses section
        
    - **Then** I should see the total number of property statuses, active statuses, and inactive statuses.
        
- **Scenario 26: Add Property Status Successfully**
    
    - **Given** I am on the Property Statuses section
        
    - **When** I add a property status with a valid name
        
    - **Then** the property status should be added successfully and appear in the list.
        
- **Scenario 27: Edit Property Status**
    
    - **Given** A property status already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 28: Delete Property Status**
    
    - **Given** A property status already exists
        
    - **When** I delete the property status
        
    - **Then** the property status should be permanently removed from the list.
        

---

### Property Features Management

- **Scenario 29: View Property Features**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Property Features section
        
    - **Then** I should see the list of all property Features with their details and status.
        
- **Scenario 30: View Property Features Statistics**
    
    - **Given** I am on the Property Features section
        
    - **Then** I should see the total number of Features, active Features, and inactive Features.
        
- **Scenario 31: Add Property Feature Successfully**
    
    - **Given** I am on the Property Features section
        
    - **When** I add an Feature with a valid name
        
    - **Then** the Feature should be added successfully and appear in the list.
        
- **Scenario 32: Edit Property Feature**
    
    - **Given** A property Features already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 33: Delete Property Features**
    
    - **Given** A property Features already exists
        
    - **When** I delete the Feature
        
    - **Then** the Feature should be permanently removed from the list.

