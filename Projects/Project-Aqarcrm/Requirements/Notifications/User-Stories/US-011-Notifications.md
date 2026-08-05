---
us_id: US-011
title: Notifications
priority:
  - High
status:
  - todo
tags:
  - requirement
---

# Story Description

## Admin

**As an** Admin  
**I want to** view, search, and send notifications to all users, a specific user type, or a specific user  
**So that** I can efficiently manage and deliver notifications to the intended recipients.

---

# Acceptance Criteria

## Admin

- [ ] **Scenario 1: View Notifications**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Notifications page
  - **Then** I should see the list of all notifications with their details.

- [ ] **Scenario 2: Create Notification Successfully**
  - **Given** I am on the Notifications page
  - **When** I create a notification with valid required information
  - **Then** the notification should be sent successfully and appear in the notifications list.

- [ ] **Scenario 3: Enter Notification Details**
  - **Given** I am creating a notification
  - **When** I enter the notification title and message
  - **Then** the notification details should be accepted.

- [ ] **Scenario 4: Upload Notification Image**
  - **Given** I am creating a notification
  - **When** I upload an image
  - **Then** the image should be attached to the notification.

- [ ] **Scenario 5: Send Notification Without Image**
  - **Given** I am creating a notification
  - **When** I do not upload an image
  - **Then** I should be able to send the notification successfully.

- [ ] **Scenario 6: Send Notification to All Users**
  - **Given** I am creating a notification
  - **When** I select **All Users**
  - **Then** the notification should be sent to all users.

- [ ] **Scenario 7: Send Notification to a Specific User Type**
  - **Given** User types exist
  - **When** I select **Specific User Type** and choose a user type
  - **Then** the notification should be sent only to users of the selected type.

- [ ] **Scenario 8: Send Notification to a Specific User**
  - **Given** Users exist
  - **When** I select **Specific User** and choose a user
  - **Then** the notification should be sent only to the selected user.

- [ ] **Scenario 9: Validate Required Fields**
  - **Given** I am creating a notification
  - **When** I leave the title or message empty
  - **Then** the system should prevent sending the notification and display validation messages.

- [ ] **Scenario 10: Search Notifications**
  - **Given** Notifications exist
  - **When** I search for a notification
  - **Then** only the matching notification(s) should be displayed.

- [ ] **Scenario 11: Pagination**
  - **Given** Multiple notifications exist
  - **When** I navigate between pages
  - **Then** the corresponding page of notifications should be displayed correctly.

- [ ] **Scenario 12: Change Page Size**
  - **Given** The notifications list is displayed
  - **When** I select a different page size
  - **Then** the number of displayed notifications per page should match the selected page size.

