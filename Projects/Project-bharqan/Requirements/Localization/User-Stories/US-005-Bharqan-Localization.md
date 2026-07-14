---
us_id: US-005-Bharqan-Localization
title: Localization
priority:
  - High
status:
  - todo
tags:
  - requirement
---
# Story Description

**As a Customer**  
**I want to** change the application language  
**So that** I can use the application in my preferred language.

## Acceptance Criteria

### **Localization**

- [ ] **Scenario 1: View Available Languages**
  - **Given** I open the Language settings
  - **When** the page loads
  - **Then** all available languages should be displayed.

- [ ] **Scenario 2: Change Language**
  - **Given** I am on the Language settings page
  - **When** I select a different language
  - **Then** the application language should be updated successfully.

- [ ] **Scenario 3: Apply the Selected Language**
  - **Given** I change the application language
  - **When** the language is applied
  - **Then** all application screens, menus, buttons, and messages should be displayed in the selected language.

- [ ] **Scenario 4: Persist Selected Language**
  - **Given** I have selected a language
  - **When** I close and reopen the application
  - **Then** the previously selected language should remain applied.

- [ ] **Scenario 5: Display Selected Language**
  - **Given** I open the Language settings
  - **When** the page loads
  - **Then** the currently selected language should be indicated.

- [ ] **Scenario 6: Switch from Arabic to English**
  - **Given** the application language is Arabic
  - **When** I select English
  - **Then** the application should be displayed in English.

- [ ] **Scenario 7: Switch from English to Arabic**
  - **Given** the application language is English
  - **When** I select Arabic
  - **Then** the application should be displayed in Arabic.

- [ ] **Scenario 8: Update Layout Direction**
  - **Given** I switch the application language
  - **When** the selected language is applied
  - **Then** the application layout should be updated according to the selected language direction (LTR/RTL).

- [ ] **Scenario 9: Handle Language Loading Failure**
  - **Given** I attempt to change the application language
  - **When** the language cannot be applied
  - **Then** an appropriate error message should be displayed.