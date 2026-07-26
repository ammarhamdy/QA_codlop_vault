# Story Description

**As a** Client

**I want to** contact the platform by submitting the Contact Us form

**So that** I can send my inquiries or requests and receive assistance.

**As a** CMS Administrator

**I want to** view and manage Contact Us submissions

**So that** I can review customer messages and update their status.

## Acceptance Criteria

- [ ] **Scenario 1: Submit Contact Us Form Successfully**
    - **Given** I am on the Contact Us page
    - **When** I fill in all the required fields with valid information and submit the form
    - **Then** the system should save my message successfully and make it available to the administrator.

- [ ] **Scenario 2: Empty Required Fields Validation**
    - **Given** I am on the Contact Us page
    - **When** I leave one or more required fields empty and submit the form
    - **Then** the system should display validation messages for the required fields and prevent form submission.

- [ ] **Scenario 3: Email Format Validation**
    - **Given** I am on the Contact Us page
    - **When** I enter an invalid email address
    - **Then** the system should display an appropriate validation message and prevent form submission.

- [ ] **Scenario 4: Phone Number Format Validation**
    - **Given** I am on the Contact Us page
    - **When** I enter an invalid phone number
    - **Then** the system should display an appropriate validation message and prevent form submission.

- [ ] **Scenario 5: View Contact Messages (CMS Admin)**
    - **Given** clients have submitted Contact Us forms
    - **When** I open the Contact Messages page in the CMS
    - **Then** I should see all submitted contact messages.

- [ ] **Scenario 6: View Contact Message Details (CMS Admin)**
    - **Given** contact messages exist
    - **When** I open a specific contact message
    - **Then** I should be able to view all submitted details.

- [ ] **Scenario 7: Update Contact Status (CMS Admin)**
    - **Given** a contact message exists
    - **When** I change its status (e.g., New, In Progress, Resolved, Closed)
    - **Then** the updated status should be saved successfully.

- [ ] **Scenario 8: Filter Contact Messages by Status (CMS Admin)**
    - **Given** contact messages with different statuses exist
    - **When** I filter the messages by status
    - **Then** only messages matching the selected status should be displayed.