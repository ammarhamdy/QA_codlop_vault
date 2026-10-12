---
us_id: US-013
title: Admins-Management
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## # Story Description

## Admin

**As an** Admin  
**I want to** manage supervisors and roles by viewing, adding, editing, deleting, searching, activating/deactivating supervisors, and managing roles and permissions  
**So that** I can control system access and assign the appropriate permissions to each supervisor.

---

# Acceptance Criteria

## Admin - Supervisors

- [ ] **Scenario 1: View Supervisors**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Supervisors page
  - **Then** I should see the list of all supervisors with their details.

- [ ] **Scenario 2: Add Supervisor Successfully**
  - **Given** I am on the Supervisors page
  - **When** I add a supervisor with valid required information
  - **Then** the supervisor should be added successfully and appear in the supervisors list.

- [ ] **Scenario 3: Edit Supervisor**
  - **Given** A supervisor already exists
  - **When** I update the supervisor information
  - **Then** the changes should be saved successfully.

- [ ] **Scenario 4: Delete Supervisor**
  - **Given** A supervisor already exists
  - **When** I delete the supervisor
  - **Then** the supervisor should be removed successfully from the supervisors list.

- [ ] **Scenario 5: Change Supervisor Status**
  - **Given** A supervisor already exists
  - **When** I activate or deactivate the supervisor
  - **Then** the supervisor status should be updated successfully.

- [ ] **Scenario 6: Search Supervisors**
  - **Given** Supervisors exist in the system
  - **When** I search using the supervisor's name or email
  - **Then** only the matching supervisor(s) should be displayed.

- [ ] **Scenario 7: Pagination**
  - **Given** Multiple supervisors exist
  - **When** I navigate between pages
  - **Then** the corresponding page of supervisors should be displayed correctly.

- [ ] **Scenario 8: Change Page Size**
  - **Given** The supervisors list is displayed
  - **When** I select a different page size
  - **Then** the number of displayed supervisors should match the selected page size.

---

## Admin - Roles & Permissions

- [ ] **Scenario 9: View Roles**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Roles & Permissions page
  - **Then** I should see the list of all roles.

- [ ] **Scenario 10: Add Role Successfully**
  - **Given** I am on the Roles & Permissions page
  - **When** I add a role with valid required information and permissions
  - **Then** the role should be added successfully.

- [ ] **Scenario 11: Edit Role**
  - **Given** A role already exists
  - **When** I update the role information or permissions
  - **Then** the changes should be saved successfully.

- [ ] **Scenario 12: Delete Role**
  - **Given** A role already exists
  - **When** I delete the role
  - **Then** the role should be removed successfully.

- [ ] **Scenario 13: Search Roles**
  - **Given** Roles exist in the system
  - **When** I search using the role name
  - **Then** only the matching role(s) should be displayed.

- [ ] **Scenario 14: Assign Permissions**
  - **Given** I am creating or editing a role
  - **When** I select the required permissions
  - **Then** the selected permissions should be assigned to the role successfully.

- [ ] **Scenario 15: Pagination**
  - **Given** Multiple roles exist
  - **When** I navigate between pages
  - **Then** the corresponding page of roles should be displayed correctly.

- [ ] **Scenario 16: Change Page Size**
  - **Given** The roles list is displayed
  - **When** I select a different page size
  - **Then** the number of displayed roles should match the selected page size.


