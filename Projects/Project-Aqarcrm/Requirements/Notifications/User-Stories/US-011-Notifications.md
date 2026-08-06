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
**As an** Admin  
**I want to** view, search, create, send, and manage notifications for all users, a specific user type, or a specific user  
**So that** I can efficiently deliver announcements and important updates to the intended recipients.

**As a** User  
**I want to** receive notifications and manage their read status  
**So that** I can stay informed about important updates and announcements.

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

- [ ] **Scenario 11: Delete a Notification**
  - **Given** A notification exists
  - **When** I delete the notification
  - **Then** it should be removed successfully from the notifications list.

- [ ] **Scenario 12: Delete Selected Notification**
  - **Given** One notification is selected
  - **When** I click **Delete Selected**
  - **Then** the selected notification should be deleted successfully.

- [ ] **Scenario 13: Delete Multiple Notifications**
  - **Given** Multiple notifications are selected
  - **When** I click **Delete Selected**
  - **Then** all selected notifications should be deleted successfully.

- [ ] **Scenario 14: Delete All Notifications**
  - **Given** All notifications are selected
  - **When** I click **Delete Selected**
  - **Then** all notifications should be deleted successfully.

- [ ] **Scenario 15: Pagination**
  - **Given** Multiple notifications exist
  - **When** I navigate between pages
  - **Then** the corresponding page of notifications should be displayed correctly.

- [ ] **Scenario 16: Change Page Size**
  - **Given** The notifications list is displayed
  - **When** I select a different page size
  - **Then** the number of displayed notifications per page should match the selected page size.

---

## User

- [ ] **Scenario 17: Receive Notification**
  - **Given** A notification is sent to me
  - **When** I log in to my account
  - **Then** a notification badge should appear on the Notifications icon.

- [ ] **Scenario 18: Update Notification Badge Count**
  - **Given** I have unread notifications
  - **When** I receive a new notification
  - **Then** the notification badge count should increase by one.

- [ ] **Scenario 19: View Notifications List**
  - **Given** I have received notifications
  - **When** I click the Notifications icon
  - **Then** I should see all my notifications.

- [ ] **Scenario 20: View Notification Details**
  - **Given** I have received a notification
  - **When** I open the notification
  - **Then** I should see its full details.

- [ ] **Scenario 21: Keep Badge for Unread Notifications**
  - **Given** I have unread notifications
  - **When** I view the notification without marking it as read
  - **Then** the notification badge should remain displayed.

- [ ] **Scenario 22: Mark Notification as Read**
  - **Given** I have an unread notification
  - **When** I mark the notification as read
  - **Then** the notification status should be updated to **Read** and the unread notification badge count should decrease accordingly.

- [ ] **Scenario 23: Clear Notification Badge**
  - **Given** All notifications have been marked as read
  - **When** I return to my account
  - **Then** the notification badge should no longer be displayed.