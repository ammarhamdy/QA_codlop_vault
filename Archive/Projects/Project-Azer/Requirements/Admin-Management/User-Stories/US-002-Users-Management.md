---
us_id: US-002
title: Manage Users
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description

**As an Administrator**  
**I want to** manage registered user accounts  
**So that** I can control account accessibility and maintain the integrity of the platform.

## Acceptance Criteria

- **Scenario 1: View Registered Users**  
    **Given** registered users exist in the system  
    **When** I navigate to the Users Management page  
    **Then** I should be able to view all registered users and their details.
    
- **Scenario 2: Delete User Account**  
    **Given** a registered user account exists  
    **When** I delete the account and confirm the action  
    **Then** the user account should be removed successfully.
    
- **Scenario 3: Deactivate User Account**  
    **Given** a registered user account exists  
    **When** I change the account status to inactive  
    **Then** the user should no longer be able to access the system.
    
- **Scenario 4: Activate User Account**  
    **Given** a registered user account is inactive  
    **When** I reactivate the account  
    **Then** the user should be able to access the system again.
    
- **Scenario 5: Status Update Persistence**  
    **Given** I update a user's status  
    **When** I refresh the page or revisit the users list  
    **Then** the updated status should remain correctly saved.