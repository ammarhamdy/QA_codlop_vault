---
us_id: US-014
title: Property-Details
priority:
  - High
status:
  - todo
tags:
  - requirement
---

# Story Description

**As a** User / Guest  
**I want to** view comprehensive property information and interact with the property by adding it to my favorites or comparison list and sharing it  
**So that** I can evaluate the property, review all its details, and easily save, compare, or share it.

---

# Acceptance Criteria

## User / Guest - Property Details

- **Scenario 1: View Property Details**
    
    - **Given** I am a User or Guest
        
    - **When** I open a property's details page
        
    - **Then** I should be able to view the property's images, basic information, details, and features.
        
- **Scenario 2: View Property Location**
    
    - **Given** I am viewing the property details
        
    - **When** I navigate to the location section
        
    - **Then** I should see the property's location information and a map displaying its location.
        
- **Scenario 3: View Property Video**
    
    - **Given** I am viewing the property details
        
    - **When** a property video is available
        
    - **Then** I should be able to view the video.
        
- **Scenario 4: Add Property to Favorites**
    
    - **Given** I am logged in as a User
        
    - **When** I choose to add the property to Favorites
        
    - **Then** the property should be added to my Favorites successfully.
        
- **Scenario 5: Restrict Guest from Adding Favorites**
    
    - **Given** I am browsing the property as a Guest
        
    - **When** I attempt to add the property to Favorites
        
    - **Then** I should not be able to add it to Favorites.
        
- **Scenario 6: Add Property to Comparison**
    
    - **Given** I am a User or Guest
        
    - **When** I choose to add the property to Comparison
        
    - **Then** the property should be added to the comparison list successfully.
        
- **Scenario 7: Share Property**
    
    - **Given** I am a User or Guest
        
    - **When** I choose to share the property
        
    - **Then** I should be able to share the property's details.
        

---

## User / Guest - Similar Properties

- **Scenario 8: View Similar Properties**
    
    - **Given** I am viewing a property's details
        
    - **When** I reach the Similar Properties section
        
    - **Then** I should see a list of properties similar to the current property.
        
- **Scenario 9: Open Similar Property**
    
    - **Given** Similar properties are displayed
        
    - **When** I select any similar property
        
    - **Then** I should be redirected to the selected property's details page.
        
- **Scenario 10: Add Similar Property to Favorites**
    
    - **Given** I am logged in as a User
        
    - **When** I add a similar property to Favorites
        
    - **Then** the selected property should be added successfully to my Favorites.
        
- **Scenario 11: Restrict Guest from Adding Similar Property to Favorites**
    
    - **Given** I am browsing as a Guest
        
    - **When** I attempt to add a similar property to Favorites
        
    - **Then** I should not be able to add it to Favorites.
        
- **Scenario 12: Add Similar Property to Comparison**
    
    - **Given** I am a User or Guest
        
    - **When** I add a similar property to Comparison
        
    - **Then** the selected property should be added successfully to the comparison list.
        
- **Scenario 13: Share Similar Property**
    
    - **Given** I am a User or Guest
        
    - **When** I choose to share a similar property
        
    - **Then** I should be able to share the selected property's details.

