---
us_id: US-007
title: Clients-Management
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description
# Customer Management

## Story Description

**As an** Admin

**I want to** manage customer accounts by viewing, adding, editing, deleting, searching, activating, and deactivating customers

**So that** I can maintain customer records and control customer access to the system.

## Acceptance Criteria

- [ ] **Scenario 1: View Customers**
    - **Given** I am logged in as an Admin
    - **When** I navigate to the Customers page
    - **Then** I should see the list of all customers with their information and status.

- [ ] **Scenario 2: View Customer Statistics**
    - **Given** I am on the Customers page
    - **When** the page loads
    - **Then** I should see the total number of customers, the number of active customers, and the number of inactive customers.

- [ ] **Scenario 3: Add Customer Successfully**
    - **Given** I am on the Customers page
    - **When** I add a customer with a valid name and phone number
    - **And** I optionally enter an email address
    - **Then** the customer should be added successfully and appear in the customers list.

- [ ] **Scenario 4: Prevent Duplicate Customer**
    - **Given** A customer with the same phone number already exists
    - **When** I try to add another customer using the same phone number
    - **Then** the system should prevent adding the customer and display an appropriate validation message.

- [ ] **Scenario 5: Edit Customer Information**
    - **Given** A customer already exists
    - **When** I update the customer's information
    - **Then** the changes should be saved successfully.

- [ ] **Scenario 6: Delete Customer**
    - **Given** A customer already exists
    - **When** I delete the customer
    - **Then** the customer should be removed from the customers list.

- [ ] **Scenario 7: Search Customer by Name**
    - **Given** Customers exist in the system
    - **When** I search using the customer's name
    - **Then** only the matching customer(s) should be displayed.

- [ ] **Scenario 8: Search Customer by Phone Number**
    - **Given** Customers exist in the system
    - **When** I search using the customer's phone number
    - **Then** the matching customer should be displayed.

- [ ] **Scenario 9: Activate Customer**
    - **Given** A customer account is inactive
    - **When** I activate the customer
    - **Then** the customer status should be updated to Active
    - **And** the customer should be able to log in.

- [ ] **Scenario 10: Deactivate Customer**
    - **Given** A customer account is active
    - **When** I deactivate the customer
    - **Then** the customer status should be updated to Inactive
    - **And** the customer should not be able to log in.

- [ ] **Scenario 11: Deactivated Customer Login**
    - **Given** A customer account has been deactivated
    - **When** The customer attempts to log in using the registered phone number
    - **Then** the login attempt should be rejected
    - **And** an appropriate message should be displayed.

- [ ] **Scenario 12: Register Again After Customer Deletion**
    - **Given** A customer account has been deleted by the Admin
    - **When** The same user registers again using the same phone number
    - **Then** a new customer account should be created successfully.

- [ ] **Scenario 13: Customer Counters Update**
    - **Given** I am on the Customers page
    - **When** I add, delete, activate, or deactivate a customer
    - **Then** the Total, Active, and Inactive customer counters should be updated correctly.
