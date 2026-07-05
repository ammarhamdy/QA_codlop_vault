---
us_id: US-009
title: Profile
priority:
  - High
status:
  - todo
tags:
  - requirement
---
## Story Description

**As a Customer**  
**I want to** view and update my profile information after logging in  
**So that** I can keep my personal information accurate and up to date.

## Acceptance Criteria

### **Profile Management**

-  **Scenario 1: View Profile Information**
    
    - **Given** I am logged in
        
    - **When** I open the **Profile** page
        
    - **Then** my profile information should be displayed correctly.
        
-  **Scenario 2: Edit Profile Information**
    
    - **Given** I am viewing my profile
        
    - **When** I update one or more editable fields
        
    - **Then** the updated values should be displayed in the input fields.
        
-  **Scenario 3: Save Profile Changes**
    
    - **Given** I have modified my profile information
        
    - **When** I tap the **Save** button
        
    - **Then** my profile should be updated successfully and a success message should be displayed.
        
-  **Scenario 4: View Updated Profile Information**
    
    - **Given** I have successfully saved my profile changes
        
    - **When** I reopen the **Profile** page
        
    - **Then** the updated information should be displayed correctly.
        
-  **Scenario 5: Validation for Required Fields**
    
    - **Given** I am editing my profile
        
    - **When** I leave a required field empty and tap **Save**
        
    - **Then** the changes should not be saved and appropriate validation messages should be displayed.
        
-  **Scenario 6: Validation for Invalid Data**
    
    - **Given** I am editing my profile
        
    - **When** I enter invalid data in one or more fields and tap **Save**
        
    - **Then** the changes should not be saved and appropriate validation messages should be displayed.
        
-  **Scenario 7: Cancel Profile Changes**
    
    - **Given** I have modified my profile information
        
    - **When** I leave the page without saving
        
    - **Then** the changes should not be applied and the previously saved information should remain unchanged.
        
-  **Scenario 8: Persist Profile Changes After Re-login**
    
    - **Given** I have successfully updated my profile
        
    - **When** I log out and log in again
        
    - **Then** the updated profile information should still be displayed.