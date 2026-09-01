---
us_id: US-012
title: Admin-Authentication
priority:
  - High
status:
  - todo
tags:
  - requirement
---
## Story Description

**As an Admin**  
**I want to** log in to the Admin Dashboard, log out securely, and view and update my profile information  
**So that** I can securely access the dashboard, manage my account, and protect unauthorized access after signing out.

## Acceptance Criteria

### **Admin Authentication & Profile**

-  **Scenario 1: Successful Login**
    
    - **Given** I am on the **Admin Login** page
        
    - **When** I enter a valid email and password and click **Login**
        
    - **Then** I should be successfully logged in and redirected to the **Admin Dashboard**.
        
-  **Scenario 2: Invalid Login Credentials**
    
    - **Given** I am on the **Admin Login** page
        
    - **When** I enter an invalid email or password and click **Login**
        
    - **Then** an appropriate error message should be displayed, and I should remain on the login page.
        
-  **Scenario 3: Logout**
    
    - **Given** I am logged in to the Admin Dashboard
        
    - **When** I click **Logout**
        
    - **Then** I should be logged out successfully and redirected to the **Admin Login** page.
        
-  **Scenario 4: Prevent Access After Logout**
    
    - **Given** I have logged out successfully
        
    - **When** I click the browser's **Back** button or try to access a protected dashboard page
        
    - **Then** I should remain on the **Admin Login** page and be required to log in again.
        
-  **Scenario 5: View Profile Information**
    
    - **Given** I am logged in
        
    - **When** I open the **Profile** page
        
    - **Then** my profile information should be displayed correctly.
        
-  **Scenario 6: Edit Profile Information**
    
    - **Given** I am viewing my profile
        
    - **When** I update one or more editable fields and click **Save**
        
    - **Then** my profile information should be updated successfully, and the changes should be reflected immediately.
        
-  **Scenario 7: Persist Profile Changes**
    
    - **Given** I have updated my profile information
        
    - **When** I log out and log in again
        
    - **Then** the updated profile information should still be displayed correctly.