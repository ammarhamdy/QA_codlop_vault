---
us_id: US-008
title: Orders
priority:
  - High
status:
  - todo
tags:
  - requirement
---
# Story Description

**As a Customer**  
**I want to** view my orders, check their details, edit or cancel eligible orders, and track their status  
**So that** I can manage my orders after placing them successfully.

## Acceptance Criteria

### **Orders Management**

- [ ] **Scenario 1: View Orders List**
  - **Given** I have placed one or more orders successfully
  - **When** I open the **My Orders** page
  - **Then** all my orders should be displayed successfully.

- [ ] **Scenario 2: Display Empty Orders State**
  - **Given** I have not placed any orders
  - **When** I open the **My Orders** page
  - **Then** an appropriate empty state message should be displayed.

- [ ] **Scenario 3: View Order Details**
  - **Given** I have an existing order
  - **When** I tap the order
  - **Then** the complete order details should be displayed.

- [ ] **Scenario 4: Display Ordered Products**
  - **Given** I open an order
  - **When** the Order Details page loads
  - **Then** all ordered products, quantities, and prices should be displayed correctly.

- [ ] **Scenario 5: Display Delivery Information**
  - **Given** I open an order
  - **When** the Order Details page loads
  - **Then** the selected delivery information should be displayed correctly.

- [ ] **Scenario 6: Display Payment Information**
  - **Given** I open an order
  - **When** the Order Details page loads
  - **Then** the payment method and payment status should be displayed correctly.

- [ ] **Scenario 7: Display Order Status**
  - **Given** I have an existing order
  - **When** I view the order
  - **Then** the current order status should be displayed correctly.

- [ ] **Scenario 8: Edit an Eligible Order**
  - **Given** my order is eligible for editing
  - **When** I update the order information and save the changes
  - **Then** the order should be updated successfully.

- [ ] **Scenario 9: Prevent Editing an Ineligible Order**
  - **Given** my order is no longer eligible for editing
  - **When** I attempt to edit the order
  - **Then** I should not be allowed to edit the order and an appropriate message should be displayed.

- [ ] **Scenario 10: Cancel an Eligible Order**
  - **Given** my order is eligible for cancellation
  - **When** I confirm the cancellation
  - **Then** the order should be canceled successfully.

- [ ] **Scenario 11: Prevent Canceling an Ineligible Order**
  - **Given** my order cannot be canceled
  - **When** I attempt to cancel the order
  - **Then** the cancellation should be prevented and an appropriate message should be displayed.

- [ ] **Scenario 12: Update Order Status**
  - **Given** my order status changes
  - **When** I refresh the **My Orders** page
  - **Then** the updated order status should be displayed correctly.

- [ ] **Scenario 13: Persist Orders After Logout and Login**
  - **Given** I have existing orders
  - **When** I log out and log in again
  - **Then** my orders should still be available in the **My Orders** page.

- [ ] **Scenario 14: Handle Orders Loading Failure**
  - **Given** I open the **My Orders** page
  - **When** the orders cannot be loaded
  - **Then** an appropriate error message should be displayed.

- [ ] **Scenario 15: Display Newly Created Order**
  - **Given** I complete a successful payment
  - **When** I open the **My Orders** page
  - **Then** the newly created order should appear in the orders list with the correct details.