---
us_id: US-016
title: Website Management
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
**I want to** manage the website content by viewing, adding, editing, deleting, reordering, and controlling the visibility and status of homepage sections, banners, and "Why Us" features  
**So that** I can efficiently control and maintain the content displayed on the website.

---

# Acceptance Criteria

## Admin

### Homepage Management

- **Scenario 1: View Homepage Sections**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Homepage Management page
        
    - **Then** I should see the list of all homepage sections with their details, display order, and status.
        
- **Scenario 2: Add Homepage Section Successfully**
    
    - **Given** I am on the Homepage Management page
        
    - **When** I add a homepage section with valid required information
        
    - **Then** the homepage section should be added successfully and appear in the sections list.
        
- **Scenario 3: Edit Homepage Section**
    
    - **Given** A homepage section already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 4: Reorder Homepage Sections**
    
    - **Given** Multiple homepage sections exist
        
    - **When** I change the display order of the sections
        
    - **Then** the sections should be displayed on the website according to the updated order.
        
- **Scenario 5: Show Homepage Section**
    
    - **Given** A homepage section exists and is hidden
        
    - **When** I enable its visibility
        
    - **Then** the section should be displayed on the website.
        
- **Scenario 6: Hide Homepage Section**
    
    - **Given** A homepage section exists and is visible
        
    - **When** I disable its visibility
        
    - **Then** the section should no longer be displayed on the website.
        

---

### Banner Management

- **Scenario 7: View Banners**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Banners page
        
    - **Then** I should see the list of all banners with their details and status.
        
- **Scenario 8: View Banner Statistics**
    
    - **Given** I am on the Banners page
        
    - **Then** I should see the total number of banners, active banners, and inactive banners.
        
- **Scenario 9: Add Banner Successfully**
    
    - **Given** I am on the Banners page
        
    - **When** I add a banner with valid required information
        
    - **Then** the banner should be added successfully and appear in the banners list.
        
- **Scenario 10: Edit Banner**
    
    - **Given** A banner already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 11: Show Banner**
    
    - **Given** A banner exists and is hidden
        
    - **When** I enable the banner
        
    - **Then** the banner should be displayed in the assigned homepage section on the website.
        
- **Scenario 12: Hide Banner**
    
    - **Given** A banner exists and is visible
        
    - **When** I disable the banner
        
    - **Then** the banner should no longer be displayed on the website.
        
- **Scenario 13: Delete Banner**
    
    - **Given** A banner already exists
        
    - **When** I delete the banner
        
    - **Then** the banner should be removed from the banners list and should no longer be displayed on the website.
        

---

### Why Us Management

- **Scenario 14: View Why Us Features**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Why Us page
        
    - **Then** I should see the list of all Why Us features with their details and status.
        
- **Scenario 15: View Why Us Statistics**
    
    - **Given** I am on the Why Us page
        
    - **Then** I should see the total number of features, active features, and inactive features.
        
- **Scenario 16: Add Why Us Feature Successfully**
    
    - **Given** I am on the Why Us page
        
    - **When** I add a feature with valid required information
        
    - **Then** the feature should be added successfully and appear in the features list.
        
- **Scenario 17: Edit Why Us Feature**
    
    - **Given** A Why Us feature already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully.
        
- **Scenario 18: Show Why Us Feature**
    
    - **Given** A Why Us feature exists and is hidden
        
    - **When** I enable its visibility
        
    - **Then** the feature should be displayed on the website.
        
- **Scenario 19: Hide Why Us Feature**
    
    - **Given** A Why Us feature exists and is visible
        
    - **When** I disable its visibility
        
    - **Then** the feature should no longer be displayed on the website.
        
- **Scenario 20: Delete Why Us Feature**
    
    - **Given** A Why Us feature already exists
        
    - **When** I delete the feature
        
    - **Then** the feature should be removed from the features list and should no longer be displayed on the website.

