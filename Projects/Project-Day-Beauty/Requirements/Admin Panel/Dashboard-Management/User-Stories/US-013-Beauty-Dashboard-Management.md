---
us_id: US-013
title: Dashboard-Management
priority:
  - High
status:
  - todo
tags:
  - requirement
---
# Story Description

**As an Admin**  
**I want to** view application visits and manage administrators, recommended products, notifications, and onboarding screens through the admin dashboard  
**So that** I can monitor the application and manage its content efficiently.

# Acceptance Criteria

## Application Visits

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

---

## Administrators Management

- **Scenario 4: View Administrators**
  - **Given** I am logged in as an Admin
  - **When** I open the **Administrators** page
  - **Then** all administrators should be displayed successfully.

- **Scenario 5: Add a New Administrator**
  - **Given** I am on the **Administrators** page
  - **When** I click **Add**, enter the required administrator information, and save
  - **Then** the new administrator should be added successfully and appear in the list.

- **Scenario 6: Edit Administrator**
  - **Given** an administrator already exists
  - **When** I edit the administrator information and save the changes
  - **Then** the administrator information should be updated successfully.

- **Scenario 7: Delete Administrator**
  - **Given** an administrator already exists
  - **When** I delete the administrator and confirm the action
  - **Then** the administrator should be removed successfully from the list.

- **Scenario 8: Cancel Administrator Deletion**
  - **Given** I have initiated deleting an administrator
  - **When** I cancel the confirmation dialog
  - **Then** the administrator should remain in the list.

- **Scenario 9: Display Updated Administrators List**
  - **Given** I have added, edited, or deleted an administrator
  - **When** I reopen the **Administrators** page
  - **Then** the list should reflect the latest changes.

---

## Recommended Products Management

- **Scenario 10: View Recommended Products**
  - **Given** I am logged in as an Admin
  - **When** I open the **Recommended Products** page
  - **Then** all recommended products should be displayed successfully.

- **Scenario 11: Add a Recommended Product**
  - **Given** I am on the **Recommended Products** page
  - **When** I add a product and save
  - **Then** the product should be displayed in the mobile application as a recommended product.

- **Scenario 12: Remove a Recommended Product**
  - **Given** a recommended product already exists
  - **When** I remove the product
  - **Then** it should no longer be displayed as a recommended product in the mobile application.

- **Scenario 13: Display Updated Recommended Products List**
  - **Given** I have added or removed recommended products
  - **When** I reopen the **Recommended Products** page
  - **Then** the list should reflect the latest changes.

---

## Notifications Management

- **Scenario 14: View Notifications**
  - **Given** I am logged in as an Admin
  - **When** I open the **Notifications** page
  - **Then** all notifications should be displayed successfully.

- **Scenario 15: Create a Notification**
  - **Given** I am on the **Notifications** page
  - **When** I create a notification, enter the required information, and save
  - **Then** the notification should be created successfully.

- **Scenario 16: Schedule a Notification**
  - **Given** I am creating or editing a notification
  - **When** I specify a scheduled date and time
  - **Then** the notification should be sent at the scheduled time.

- **Scenario 17: Edit Notification**
  - **Given** a notification already exists
  - **When** I edit the notification information and save
  - **Then** the notification should be updated successfully.

- **Scenario 18: Delete Notification**
  - **Given** a notification already exists
  - **When** I delete the notification and confirm the action
  - **Then** the notification should be removed successfully.

- **Scenario 19: Cancel Notification Deletion**
  - **Given** I have initiated deleting a notification
  - **When** I cancel the confirmation dialog
  - **Then** the notification should remain in the list.

- **Scenario 20: Display Updated Notifications List**
  - **Given** I have added, edited, or deleted notifications
  - **When** I reopen the **Notifications** page
  - **Then** the list should reflect the latest changes.

---

## Onboarding Screens Management

- **Scenario 21: View Onboarding Screens**
  - **Given** I am logged in as an Admin
  - **When** I open the **Onboarding Screens** page
  - **Then** all onboarding screens should be displayed successfully.

- **Scenario 22: Add a New Onboarding Screen**
  - **Given** I am on the **Onboarding Screens** page
  - **When** I click **Add**, enter the required information, and save
  - **Then** the new onboarding screen should be added successfully and appear in the list.

- **Scenario 23: Edit Onboarding Screen**
  - **Given** an onboarding screen already exists
  - **When** I edit the onboarding screen information and save the changes
  - **Then** the onboarding screen should be updated successfully.

- **Scenario 24: Delete Onboarding Screen**
  - **Given** an onboarding screen already exists
  - **When** I delete the onboarding screen and confirm the action
  - **Then** the onboarding screen should be removed successfully from the list.

- **Scenario 25: Cancel Onboarding Screen Deletion**
  - **Given** I have initiated deleting an onboarding screen
  - **When** I cancel the confirmation dialog
  - **Then** the onboarding screen should remain in the list.

- **Scenario 26: Display Updated Onboarding Screens List**
  - **Given** I have added, edited, or deleted onboarding screens
  - **When** I reopen the **Onboarding Screens** page
  - **Then** the list should reflect the latest changes.