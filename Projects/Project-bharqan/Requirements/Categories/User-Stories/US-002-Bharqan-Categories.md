---
us_id: US-002
title: Categories
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description
### Story Description

**As a Customer**  
**I want to** browse product categories, view category details, filter and sort products, and access product details  
**So that** I can easily find the products that match my preferences.

## Acceptance Criteria

- **Scenario 1: View Categories List**  
    **Given** I am on the Categories page  
    **When** the page loads successfully  
    **Then** I should see all available categories.
- **Scenario 2: Open Category Details**  
    **Given** categories are displayed  
    **When** I select a category  
    **Then** I should be redirected to the Category Details page showing the products belonging to that category.
- **Scenario 3: View Product Count**  
    **Given** I am on the Category Details page  
    **When** the page is displayed  
    **Then** I should see the total number of products available in the selected category.
- **Scenario 4: View Products List**  
    **Given** I am on the Category Details page  
    **When** products are available  
    **Then** I should see all products belonging to the selected category.
- **Scenario 5: Open Product Details**  
    **Given** products are displayed in the selected category  
    **When** I select a product  
    **Then** I should be redirected to the Product Details page.
- **Scenario 6: Filter Products by Price Range**  
    **Given** I am on the Category Details page  
    **When** I enter a valid minimum and maximum price and apply the filters  
    **Then** only products within the selected price range should be displayed.
- **Scenario 7: Sort Products**  
    **Given** I am on the Category Details page  
    **When** I select a sorting option from the Sort dropdown and apply the filters  
    **Then** the products should be displayed according to the selected sorting option.
- **Scenario 8: Filter Discounted Products**  
    **Given** I am on the Category Details page  
    **When** I enable the **Discounts Only** filter and apply the filters  
    **Then** only discounted products should be displayed.
- **Scenario 9: Apply Multiple Filters**  
    **Given** I am on the Category Details page  
    **When** I apply one or more filters (Price Range, Sort, Discounts Only) and select **Show Results**  
    **Then** the product list should be updated based on all selected filters.
- **Scenario 10: Reset Filters**  
    **Given** one or more filters are applied  
    **When** I select **Reset Filters**  
    **Then** all filters should be cleared and the complete product list should be displayed.
- **Scenario 11: No Matching Products**  
    **Given** I apply filters that return no matching products  
    **When** the results are displayed  
    **Then** the system should display an appropriate message indicating that no products were found.
- **Scenario 12: Invalid Price Range Validation**  
    **Given** I am applying a price filter  
    **When** the minimum price is greater than the maximum price  
    **Then** the system should display a validation message and prevent applying the filter.
- **Scenario 13: Preserve Applied Filters**  
    **Given** filters have been applied successfully  
    **When** the filtered results are displayed  
    **Then** the selected filter values should remain visible until I reset them.
