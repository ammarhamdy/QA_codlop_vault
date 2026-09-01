---
us_id: US-008
title: CART Payment
priority:
  - High
status:
  - todo
tags:
  - requirement
---

# Story Description

**As a Customer**  
**I want to** review my order, provide my delivery and contact information, apply coupons, add order notes, choose my payment option, and complete the payment process  
**So that** I can place my order successfully with the correct delivery and payment details.

## Acceptance Criteria

- [ ] **Scenario 1: View Order Summary**
  - **Given** I have products in my cart
  - **When** I open the Payment page
  - **Then** I should see the ordered products, quantities, subtotal, and total amount.

- [ ] **Scenario 2: View Contact Information**
  - **Given** I open the Payment page
  - **When** the page loads
  - **Then** my contact information should be displayed correctly.

- [ ] **Scenario 3: Select Delivery Method**
  - **Given** I am on the Payment page
  - **When** I choose **Shipping** or **Pickup**
  - **Then** the corresponding delivery section should be displayed.

- [ ] **Scenario 4: Save Shipping Address**
  - **Given** I select **Shipping**
  - **When** I enter all required address fields and tap **Save**
  - **Then** the shipping address should be saved successfully.

- [ ] **Scenario 5: Validate Required Shipping Fields**
  - **Given** I select **Shipping**
  - **When** I leave one or more required fields empty and tap **Save**
  - **Then** validation messages should be displayed and the address should not be saved.

- [ ] **Scenario 6: Save Pickup Information**
  - **Given** I select **Pickup**
  - **When** I choose the pickup location and continue
  - **Then** the pickup information should be saved successfully.

- [ ] **Scenario 7: Save Pickup by Another Person**
  - **Given** I enable **Pickup by Another Person**
  - **When** I enter all required information and tap **Save**
  - **Then** the recipient information should be saved successfully.

- [ ] **Scenario 8: Purchase as Company**
  - **Given** I enable **Purchase as Company**
  - **When** I enter the required company information
  - **Then** the company details should be saved successfully.

- [ ] **Scenario 9: Apply Coupon**
  - **Given** I have an eligible order
  - **When** I enter a valid coupon code and tap **Apply**
  - **Then** the discount should be applied successfully.

- [ ] **Scenario 10: Reject Invalid Coupon**
  - **Given** I have an order
  - **When** I enter an invalid or expired coupon
  - **Then** an appropriate validation message should be displayed.

- [ ] **Scenario 11: Add Order Note**
  - **Given** I am on the Payment page
  - **When** I enter an order note
  - **Then** the note should be saved with the order.

- [ ] **Scenario 12: Complete Payment Successfully**
  - **Given** all required information is completed
  - **When** I tap **Pay**
  - **Then** the payment should be completed successfully and the order should be created.

- [ ] **Scenario 13: Handle Payment Failure**
  - **Given** I attempt to complete the payment
  - **When** the payment fails
  - **Then** an appropriate error message should be displayed and the order should not be created.

- [ ] **Scenario 14: Prevent Payment with Incomplete Information**
  - **Given** one or more required fields are missing
  - **When** I tap **Pay**
  - **Then** the payment should not proceed until all required information is completed.

