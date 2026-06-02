---
us_id: US-006
title: Products
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description

**As a** Client  
**I want to** browse products, view details, add products to favorites and cart, and submit product requests  
**So that** I can discover products and request the ones I am interested in.

**As an** Administrator  
**I want to** manage products and product requests  
**So that** I can maintain product availability and process customer requests efficiently.

## Acceptance Criteria

-  **Scenario 1: Browse All Products**
    
    - **Given** I am on the Products page
        
    - **When** the page loads
        
    - **Then** the "All" category should be selected by default and all visible products should be displayed.
        
-  **Scenario 2: Filter Products by Category**
    
    - **Given** I am on the Products page
        
    - **When** I select a category (Books, Activities, Courses, Services, etc.)
        
    - **Then** only products belonging to the selected category should be displayed.
        
-  **Scenario 3: View Product Counts**
    
    - **Given** I am on the Products page
        
    - **When** categories are displayed
        
    - **Then** each category should display its corresponding product count and the "All" category should display the total number of products.
        
-  **Scenario 4: View All Products in a Category**
    
    - **Given** a category contains products
        
    - **When** I click "View All"
        
    - **Then** I should be redirected to a page displaying all products within that category.
        
-  **Scenario 5: View Product Details**
    
    - **Given** products are displayed
        
    - **When** I select a product
        
    - **Then** the product details page should open and display the complete product information.
        
-  **Scenario 6: Add Product to Favorites**
    
    - **Given** I am viewing a product
        
    - **When** I click the favorite icon
        
    - **Then** the product should be added to my favorites list.
        
-  **Scenario 7: Remove Product from Favorites**
    
    - **Given** a product exists in my favorites list
        
    - **When** I remove it from favorites
        
    - **Then** the product should no longer appear in my favorites list.
        
-  **Scenario 8: View Favorite Products**
    
    - **Given** products have been added to favorites
        
    - **When** I open my favorites list
        
    - **Then** all favorite products should be displayed.
        
-  **Scenario 9: Add Product to Cart**
    
    - **Given** I am viewing a product
        
    - **When** I click "Add to Cart"
        
    - **Then** the product should be added to my cart successfully.
        
-  **Scenario 10: Remove Product from Cart**
    
    - **Given** a product exists in my cart
        
    - **When** I remove the product
        
    - **Then** the product should be removed from the cart successfully.
        
-  **Scenario 11: Submit Cart Request**
    
    - **Given** products exist in my cart
        
    - **When** I submit the cart request
        
    - **Then** the request should be created and sent to the administrator successfully.
        
-  **Scenario 12: Add Product**
    
    - **Given** I am an administrator
        
    - **When** I enter valid product information and save
        
    - **Then** a new product should be created successfully.
        
-  **Scenario 13: Edit Product**
    
    - **Given** a product already exists
        
    - **When** I modify the product information and save
        
    - **Then** the product details should be updated successfully.
        
-  **Scenario 14: Delete Product**
    
    - **Given** a product already exists
        
    - **When** I delete the product
        
    - **Then** the product should no longer be available to clients.
        
-  **Scenario 15: Show/Hide Product**
    
    - **Given** a product already exists
        
    - **When** I change its visibility status
        
    - **Then** the product should be displayed or hidden accordingly.
        
-  **Scenario 16: View Product Requests**
    
    - **Given** clients have submitted requests
        
    - **When** I access the requests page
        
    - **Then** all product requests should be displayed.
        
-  **Scenario 17: View Product Request Details**
    
    - **Given** product requests exist
        
    - **When** I select a request
        
    - **Then** all request details should be displayed.
        
-  **Scenario 18: Search Product Requests**
    
    - **Given** product requests exist
        
    - **When** I search using a valid keyword
        
    - **Then** matching requests should be displayed.
        
-  **Scenario 19: Filter Product Requests**
    
    - **Given** product requests exist
        
    - **When** I apply a filter
        
    - **Then** only matching requests should be displayed.
        
-  **Scenario 20: Update Product Request Status**
    
    - **Given** a product request exists
        
    - **When** I change its status
        
    - **Then** the updated status should be saved and displayed successfully.