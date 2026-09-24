---
us_id: US-002
title: Services
priority:
  - High
status:
  - in-progress
tags:
  - requirement
---

# Story Description

**As an Admin**

**I want to** manage the company's services by viewing, adding, editing, deleting, reordering, and changing the publication status of services

**So that** I can keep the Services section updated and organized for website visitors.

**As a User**

**I want to** view the company's published services and select a specific service

**So that** I can learn about the available services and contact the company regarding the selected service.

---

# Acceptance Criteria

## Admin - Services

- **Scenario 1: View Services**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Services page
        
    - **Then** I should see the list of all services with their relevant details.
        
- **Scenario 2: Add Service Successfully**
    
    - **Given** I am on the Services page
        
    - **When** I add a service with valid required information including Arabic and English service name, Arabic and English subtitle, Arabic and English description, color, illustration, and publication status
        
    - **Then** the service should be added successfully and appear in the services list.
        
- **Scenario 3: Edit Service**
    
    - **Given** A service already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully and reflected in the services list.
        
- **Scenario 4: Delete Service**
    
    - **Given** A service already exists
        
    - **When** I delete the service
        
    - **Then** the service should be removed successfully from the services list.
        
- **Scenario 5: Reorder Services**
    
    - **Given** Multiple services exist
        
    - **When** I change the order of the services
        
    - **Then** the new order should be saved successfully.
        
- **Scenario 6: Change Service Status**
    
    - **Given** A service exists
        
    - **When** I change its status between Published and Unpublished
        
    - **Then** the service status should be updated successfully.
        

---

## User - Services

- **Scenario 7: View Published Services**
    
    - **Given** I am visiting the company website
        
    - **When** I navigate to the Services section
        
    - **Then** I should see the company's published services.
        
- **Scenario 8: View Service Details**
    
    - **Given** A published service is displayed
        
    - **When** I view the service
        
    - **Then** I should see its relevant information including the service name, subtitle, description, color, and illustration.
        
- **Scenario 9: Select Service**
    
    - **Given** A published service is displayed
        
    - **When** I click on the service
        
    - **Then** I should be redirected to the Contact Form.
        
- **Scenario 10: Contact Regarding Selected Service**
    
    - **Given** I selected a specific service
        
    - **When** I open the Contact Form
        
    - **Then** the selected service should be identified as the subject of my inquiry.
        
- **Scenario 11: Unpublished Services Not Visible**
    
    - **Given** A service has Unpublished status
        
    - **When** I visit the Services section
        
    - **Then** the unpublished service should not be displayed.
        

---

_Last Updated: {{date}} {{time}}_

---
*Last Updated: {{date}} {{time}}*