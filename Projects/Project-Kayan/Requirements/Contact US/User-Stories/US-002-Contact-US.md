---
us_id: US-002
title: Contact-US
priority:
  - High
status:
  - ready-for-QA
tags:
  - requirement
---

# Story Description

**As a** Website Visitor

**I want to** submit a Contact Us request

**So that** I can communicate with the platform and send my inquiry or request.

**As an** Admin

**I want to** manage the Contact Us content and submitted contact requests

**So that** I can keep the Contact Us information updated and manage, review, search, and delete submitted requests.

## Acceptance Criteria

### User Side

- **Scenario 1: View Contact Us**
    
    - **Given** I access the **Contact Us** page
        
    - **When** the page is loaded
        
    - **Then** I should see the Contact Us title, description, and contact form displayed correctly.
        
- **Scenario 2: Submit Contact Request**
    
    - **Given** I am on the **Contact Us** page
        
    - **When** I enter the required contact information and message
        
    - **And** I click the **Submit** button
        
    - **Then** the contact request should be submitted successfully.
        

### Admin Side – Contact Us Content

- **Scenario 4: View Contact Us Settings**
    
    - **Given** I am logged in as an Admin
        
    - **When** I access the Contact Us management section
        
    - **Then** I should be able to view the current Contact Us title and description.
        
- **Scenario 5: Update Contact Us Content**
    
    - **Given** I am logged in as an Admin
        
    - **When** I edit the Contact Us title and/or description
        
    - **And** I save the changes
        
    - **Then** the updated title and description should be saved successfully
        
    - **And** the updated content should be displayed on the Contact Us page.
        

### Admin Side – Contact Requests

- **Scenario 6: View Contact Requests**
    
    - **Given** I am logged in as an Admin
        
    - **When** I access the Contact Requests section
        
    - **Then** I should see a list of all submitted contact requests.
        
- **Scenario 7: Search Contact Requests**
    
    - **Given** I am viewing the Contact Requests list
        
    - **When** I enter a valid search keyword
        
    - **Then** the system should display the contact requests matching the search criteria.
        
- **Scenario 8: View Contact Request Details**
    
    - **Given** I am viewing the Contact Requests list
        
    - **When** I select a contact request
        
    - **Then** I should be able to view the complete details of the selected request.
        
- **Scenario 9: Delete Contact Request**
    
    - **Given** I am viewing the Contact Requests list
        
    - **When** I select a contact request and click **Delete**
        
    - **Then** the selected contact request should be deleted successfully
        
    - **And** it should no longer appear in the Contact Requests list.
        
- **Scenario 10: Paginate Contact Requests**
    
    - **Given** the number of contact requests exceeds the page size
        
    - **When** I navigate between pagination pages
        
    - **Then** the corresponding contact requests should be displayed for the selected page.

---
*Last Updated: {{date}} {{time}}*