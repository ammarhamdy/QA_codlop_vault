---
us_id: US-003
title: Media
priority:
  - High
status:
  - in-progress
tags:
  - requirement
---

## Story Description

**As an Admin  
I want to manage a centralized Media Library by viewing, uploading, replacing, and filtering media files by their source section (Works, Services, Identity, Team, etc.)  
So that I can reuse existing files across the system, avoid duplicate uploads, and keep track of storage usage.

Acceptance Criteria  
Admin - Media Library

- Scenario 1: View Media Library
    - Given I am logged in as an Admin
    - When I navigate to the Media Library page
    - Then I should see all uploaded files from across the system, each showing its name, dimensions, and size.
- Scenario 2: Upload File Successfully
    - Given I am on the Media Library page
    - When I upload a new valid file
    - Then the file should be added successfully and appear in the media list.
- Scenario 3: Filter Media by Source
    - Given Multiple files exist from different sections
    - When I select a filter such as Works, Services, Identity, or Team
    - Then only the files belonging to that section should be displayed.
- Scenario 4: Search Media
    - Given Multiple files exist in the library
    - When I search by file name or alternative text
    - Then only the matching files should be displayed.
- Scenario 5: Replace File
    - Given A file already exists in the library
    - When I choose a new file to replace it
    - Then the file should be updated successfully without breaking its existing links in other sections.
- Scenario 6: View Storage Usage
    - Given I am on the Media Library page
    - When the page loads
    - Then I should see the total number of files and the total storage space used.

---
*Last Updated: {{date}} {{time}}*