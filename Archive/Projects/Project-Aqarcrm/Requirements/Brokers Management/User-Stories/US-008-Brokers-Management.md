---
us_id: US-008
title: Brokers-Management
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description
# Brokers Management

## Story Description

**As an** Admin

**I want to** manage brokers by viewing, adding, editing, deleting, searching, filtering, and changing their status

**So that** I can maintain broker records and efficiently manage their accounts.

## Acceptance Criteria

- [ ] **Scenario 1: View Brokers**
  - **Given** I am logged in as an Admin
  - **When** I navigate to the Brokers page
  - **Then** I should see the list of all brokers with their information and status.

- [ ] **Scenario 2: View Broker Statistics**
  - **Given** I am on the Brokers page
  - **When** the page loads
  - **Then** I should see the total number of brokers, the number of active brokers, and the number of inactive brokers.

- [ ] **Scenario 3: Add Broker Successfully**
  - **Given** I am on the Brokers page
  - **When** I add a broker with valid required information
  - **Then** the broker should be added successfully and appear in the brokers list.

- [ ] **Scenario 4: Edit Broker**
  - **Given** A broker already exists
  - **When** I update the broker's information
  - **Then** the changes should be saved successfully.

- [ ] **Scenario 5: Delete Broker**
  - **Given** A broker already exists
  - **When** I delete the broker
  - **Then** the broker should be removed from the brokers list.

- [ ] **Scenario 6: Search Broker by Name**
  - **Given** Brokers exist in the system
  - **When** I search using the broker's name
  - **Then** only the matching broker(s) should be displayed.

- [ ] **Scenario 7: Search Broker by Phone Number**
  - **Given** Brokers exist in the system
  - **When** I search using the broker's phone number
  - **Then** the matching broker should be displayed.

- [ ] **Scenario 8: Filter Brokers by Status**
  - **Given** Brokers exist in the system
  - **When** I filter the list by Active or Inactive status
  - **Then** only brokers matching the selected status should be displayed.

- [ ] **Scenario 9: Activate Broker**
  - **Given** A broker is inactive
  - **When** I change the broker's status to Active
  - **Then** the broker's status should be updated successfully.

- [ ] **Scenario 10: Deactivate Broker**
  - **Given** A broker is active
  - **When** I change the broker's status to Inactive
  - **Then** the broker's status should be updated successfully.

- [ ] **Scenario 11: Broker Counters Update**
  - **Given** I am on the Brokers page
  - **When** I add, delete, activate, or deactivate a broker
  - **Then** the Total, Active, and Inactive broker counters should be updated correctly.
