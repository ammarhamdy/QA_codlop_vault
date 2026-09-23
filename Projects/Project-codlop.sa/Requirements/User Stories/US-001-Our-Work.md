---
us_id: US-001
title: Our Work
priority:
  - High
status:
  - in-progress
tags:
  - requirement
---

# Story Description

**As an Admin**

**I want to** manage the company's works by viewing, adding, editing, deleting, searching, filtering, exporting, and reordering works

**So that** I can keep the Our Work section updated and organized for website visitors.

**As a User**

**I want to** view the company's published works and access the related work details or store page

**So that** I can explore the company's previous works and learn more about the company's projects.

---

# Acceptance Criteria

## Admin - Our Work

- **Scenario 1: View Works**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the Our Work page
        
    - **Then** I should see the list of all works with their relevant details.
        
- **Scenario 2: View Works Statistics**
    
    - **Given** I am on the Our Work page
        
    - **When** the page is loaded
        
    - **Then** I should see the total number of works, featured works, and draft works.
        
    - **And** the "All" filter should be selected by default.
        
- **Scenario 3: Filter Works by Type**
    
    - **Given** Works exist with different work types
        
    - **When** I select a specific work type
        
    - **Then** only works belonging to the selected work type should be displayed.
        
- **Scenario 4: Add Work Successfully**
    
    - **Given** I am on the Our Work page
        
    - **When** I add a work with valid required information including client name, description, work type, sector, store link, cover image, image alternative text, icon, icon alternative text, status, and featured option
        
    - **Then** the work should be added successfully and appear in the works list.
        
- **Scenario 5: Edit Work**
    
    - **Given** A work already exists
        
    - **When** I update its information
        
    - **Then** the changes should be saved successfully and reflected in the works list.
        
- **Scenario 6: Delete Work**
    
    - **Given** A work already exists
        
    - **When** I delete the work
        
    - **Then** the work should be removed successfully from the works list.
        
- **Scenario 7: Reorder Works**
    
    - **Given** Multiple works exist
        
    - **When** I change the order of the works
        
    - **Then** the new order should be saved successfully.
        
- **Scenario 8: Search Works**
    
    - **Given** Works exist in the system
        
    - **When** I search using the work name
        
    - **Then** only the matching work(s) should be displayed.
        
- **Scenario 9: Export Works to CSV**
    
    - **Given** Works exist in the system
        
    - **When** I click the Export CSV button
        
    - **Then** a CSV file containing the works data should be downloaded successfully.
        
- **Scenario 10: Pagination**
    
    - **Given** Multiple works exist
        
    - **When** I navigate between pages
        
    - **Then** the corresponding page of works should be displayed correctly.
        
- **Scenario 11: Change Page Size**
    
    - **Given** The works list is displayed
        
    - **When** I select a different page size
        
    - **Then** the number of displayed works should match the selected page size.
        

---

## User - Our Work

- **Scenario 12: View Published Works**
    
    - **Given** I am visiting the company website
        
    - **When** I navigate to the Our Work section
        
    - **Then** I should see the company's published works.
        
- **Scenario 13: View Work**
    
    - **Given** A published work is displayed
        
    - **When** I click on the work
        
    - **Then** I should be redirected to the corresponding work destination.
        
- **Scenario 14: Open Application Work**
    
    - **Given** The selected work is an application
        
    - **When** I click on the work
        
    - **Then** I should be redirected to the application's store page.
        
- **Scenario 15: View Theme Work**
    
    - **Given** The selected work is a theme
        
    - **When** I click on the work
        
    - **Then** I should be redirected to the theme details page.
        
    - **And** I should be able to view more details about the theme.
        
- **Scenario 16: Draft Works Not Visible**
    
    - **Given** A work has Draft status
        
    - **When** I visit the Our Work section
        
    - **Then** the draft work should not be displayed.
        
- **Scenario 17: Featured Works**
    
    - **Given** A published work is marked as Featured
        
    - **When** I visit the Our Work section
        
    - **Then** the work should be displayed in the designated Featured Works area.

---
*Last Updated: {{date}} {{time}}*