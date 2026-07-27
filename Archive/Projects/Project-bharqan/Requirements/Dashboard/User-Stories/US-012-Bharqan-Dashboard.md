---
us_id: US-012
title: Dashboard
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description

**As an Admin**  
**I want to** view **Application Visits** and manage **Settings Screens** by viewing, adding, editing, and deleting them  
**So that** I can monitor application visits and manage the system settings.

## Acceptance Criteria

### **Application Visits**

- **Scenario 1: View Application Visits**
    
    - **Given** I am logged in as an Admin
        
    - **When** I open the **Application Visits** page
        
    - **Then** the application visits should be displayed with their dates and visit counts.
        
- **Scenario 2: Filter Application Visits by Date**
    
    - **Given** I am on the **Application Visits** page
        
    - **When** I select a specific date
        
    - **Then** the application visits for the selected date should be displayed.
        
- **Scenario 3: Clear Date Filter**
    
    - **Given** a date filter is applied
        
    - **When** I clear the date filter
        
    - **Then** all application visits should be displayed again.
        

### **Onboarding Screens Management**

- **Scenario 4: View **Onboarding Screens**
    
    - **Given** I am logged in as an Admin
        
    - **When** I open the **Onboarding Screens** page
        
    - **Then** all settings screens should be displayed successfully.
        
- **Scenario 5: Add a New Onboarding Screen**
    
    - **Given** I am on the **Onboarding Screens** page
        
    - **When** I tap **Add**, enter the required information, and save
        
    - **Then** the new settings screen should be added successfully and appear in the list.
        
- **Scenario 6: Edit **Onboarding Screen**
    
    - **Given** a settings screen already exists
        
    - **When** I edit the **Onboarding screen information and save the changes
        
    - **Then** the **Onboarding screen should be updated successfully.
        
- **Scenario 7: Delete **Onboarding Screen**
    
    - **Given** a settings screen already exists
        
    - **When** I delete the settings screen and confirm the action
        
    - **Then** the settings screen should be removed successfully from the list.
        
- **Scenario 8: Cancel **Onboarding Screen Deletion**
    
    - **Given** I have initiated deleting a settings screen
        
    - **When** I cancel the confirmation dialog
        
    - **Then** the settings screen should remain in the list.
        
- **Scenario 9: Display Updated **Onboarding Screens List**
    
    - **Given** I have added, edited, or deleted **Onboarding screen
        
    - **When** I reopen the **Onboarding Screens** page
        
    - **Then** the list should reflect the latest changes.

