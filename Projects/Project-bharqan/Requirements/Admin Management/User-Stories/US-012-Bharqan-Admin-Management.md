---
us_id: US-012
title: Admin Management
priority:
  - High
status:
  - todo
tags:
  - requirement
---
## Story Description

**As an Admin**  
**I want to** manage supervisors by viewing, adding, editing, activating/deactivating, assigning permissions, and deleting them  
**So that** I can control user access and manage supervisors efficiently.

## Acceptance Criteria

### **Supervisor Management**

-  **Scenario 1: View Supervisors**
    
    - **Given** I am logged in as an Admin
        
    - **When** I open the **Supervisors** page
        
    - **Then** all supervisors should be displayed successfully.
        
-  **Scenario 2: Add a New Supervisor**
    
    - **Given** I am on the **Supervisors** page
        
    - **When** I tap **Add Supervisor**, enter valid supervisor information, assign permissions, and save
        
    - **Then** the new supervisor should be created successfully and appear in the supervisors list.
        
-  **Scenario 3: Edit Supervisor Information**
    
    - **Given** a supervisor already exists
        
    - **When** I update the supervisor's information and save the changes
        
    - **Then** the supervisor's information should be updated successfully.
        
-  **Scenario 4: Assign or Update Supervisor Permissions**
    
    - **Given** a supervisor exists
        
    - **When** I assign or modify the supervisor's permissions and save
        
    - **Then** the updated permissions should be applied successfully.
        
-  **Scenario 5: Activate a Supervisor**
    
    - **Given** a supervisor is inactive
        
    - **When** I activate the supervisor
        
    - **Then** the supervisor's status should change to **Active**.
        
-  **Scenario 6: Deactivate a Supervisor**
    
    - **Given** a supervisor is active
        
    - **When** I deactivate the supervisor
        
    - **Then** the supervisor's status should change to **Inactive**.
        
-  **Scenario 7: Delete a Supervisor**
    
    - **Given** a supervisor exists
        
    - **When** I delete the supervisor and confirm the action
        
    - **Then** the supervisor should be removed successfully from the supervisors list.
        
-  **Scenario 8: Cancel Supervisor Deletion**
    
    - **Given** I have initiated deleting a supervisor
        
    - **When** I cancel the confirmation dialog
        
    - **Then** the supervisor should remain in the supervisors list.
        
-  **Scenario 9: Display Updated Supervisors List**
    
    - **Given** I have added, edited, activated, deactivated, or deleted a supervisor
        
    - **When** I reopen the **Supervisors** page
        
    - **Then** the supervisors list should reflect the latest changes.