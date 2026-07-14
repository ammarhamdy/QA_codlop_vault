---
us_id: US-007
title: CART
priority:
  - High
status:
  - todo
tags:
  - requirement
---
## Story Description

**As a Customer**  
**I want to** manage products in my cart, apply coupons, complete the payment process, and view my orders  
**So that** I can purchase products easily and track my orders after checkout.

## Acceptance Criteria

### **Cart Management**

- [ ]  **Scenario 1: View Cart**
    - **Given** I have one or more products in my cart
    - **When** I open the Cart page
    - **Then** all added products should be displayed successfully.
- [ ]  **Scenario 2: Add Product to Cart**
    - **Given** I am viewing a product
    - **When** I tap **Add to Cart**
    - **Then** the product should be added to my cart successfully.
- [ ]  **Scenario 3: Remove Product from Cart**
    - **Given** a product exists in my cart
    - **When** I remove the product
    - **Then** the product should be removed from the cart and the cart should update successfully.
- [ ]  **Scenario 4: Increase Product Quantity**
    - **Given** a product exists in my cart
    - **When** I tap the **Increase Quantity (+)** button
    - **Then** the product quantity should increase and the total price should be updated.
- [ ]  **Scenario 5: Decrease Product Quantity**
    - **Given** the product quantity is greater than one
    - **When** I tap the **Decrease Quantity (-)** button
    - **Then** the quantity should decrease and the total price should be updated.
- [ ]  **Scenario 6: Prevent Quantity Below Minimum**
    - **Given** the product quantity is one
    - **When** I tap the **Decrease Quantity (-)** button
    - **Then** the quantity should remain one.
- [ ]  **Scenario 7: View Cart Summary**
    - **Given** I have products in my cart
    - **When** I open the Cart page
    - **Then** the subtotal, discount (if any), and total amount should be displayed correctly.
- [ ]  **Scenario 8: Apply Valid Coupon**
    - **Given** I have eligible products in my cart
    - **When** I enter a valid coupon code
    - **Then** the discount should be applied successfully.
- [ ]  **Scenario 9: Apply Invalid Coupon**
    - **Given** I have products in my cart
    - **When** I enter an invalid or expired coupon code
    - **Then** an appropriate validation message should be displayed.
- [ ]  **Scenario 10: Proceed to Payment**
    - **Given** I have at least one product in my cart
    - **When** I tap **Pay Now**
    - **Then** I should be navigated to the Payment page.