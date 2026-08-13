---
us_id: US-015
title: Reports
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description

**As an** Admin  
**I want to** view, filter, analyze, and print property , users, property ,broker requests  reports  
**So that** I can monitor their statistics, track performance, and analyze data based on different criteria.

---

# Acceptance Criteria

## Admin

- **Scenario 1: View  property , users, property ,broker requests  Report**
    
    - **Given** I am logged in as an Admin
        
    - **When** I navigate to the property , users, property ,broker requests Report page
        
    - **Then** I should see the  property , users, property ,broker requests  report with all available statistics, filters, and charts.
        
- **Scenario 2: Filter Report by From Date**
    
    - **Given** I am on property , users, property ,broker requests  Report page
        
    - **When** I select a date in **From Date**
        
    - **Then** the report should be updated to include data from the selected date onward.
        
- **Scenario 3: Filter Report by To Date**
    
    - **Given** I am on the  property , users, property ,broker requests  Report page
        
    - **When** I select a date in **To Date**
        
    - **Then** the report should be updated to include data up to the selected date.
        
- **Scenario 4: Filter Report by Date Range**
    
    - **Given** I am on the  property , users, property ,broker requests  Report page
        
    - **When** I select a valid **From Date** and **To Date**
        
    - **Then** the report should display data within the selected date range.
        
- **Scenario 5: Validate Invalid Date Range**
    
    - **Given** I am on the  property , users, property ,broker requests  Report page
        
    - **When** I select a **From Date** later than the **To Date**
        
    - **Then** the system should prevent applying the invalid date range and display an appropriate validation message.
        
- **Scenario 6: Filter Report by Publication Status**
    
    - **Given**  property , users, property ,broker requests  exist with different publication statuses
        
    - **When** I select a publication status
        
    - **Then** the report should display data matching the selected status.
        
- **Scenario 7: Filter Report by Advertisement Type**
    
    - **Given**  property , users, property ,broker requests  exist with different advertisement types
        
    - **When** I select an advertisement type
        
    - **Then** the report should display data matching the selected advertisement type.
        
- **Scenario 8: Apply Multiple Filters**
    
    - **Given**  property , users, property ,broker requests  matching the selected criteria exist
        
    - **When** I apply multiple filters together
        
    - **Then** the report should display only data matching all selected filters.
        
- **Scenario 9: Automatic Report Update**
    
    - **Given** I am on the  property , users, property ,broker requests  Report page
        
    - **When** I change any report filter
        
    - **Then** the report should update automatically without requiring a separate search action.
        
- **Scenario 10: Clear Filters**
    
    - **Given** one or more filters are applied
        
    - **When** I clear the applied filters
        
    - **Then** the report should return to the default unfiltered data.
        
- **Scenario 11: View Total  properties , users, property ,broker requests 
    
    - **Given** property data exists
        
    - **When** I view the Properties Report
        
    - **Then** I should see the total number of properties included in the report.
        
- **Scenario 12: View Published  properties , users, property ,broker requests 
    
    - **Given** published properties , users, property ,broker requests  exist
        
    - **When** I view the properties , users, property ,broker requests  Report
        
    - **Then** I should see the total number of published properties , users, property ,broker requests .
        
- **Scenario 13: View Draft Properties**
    
    - **Given** draft properties , users, property ,broker requests  exist
        
    - **When** I view the properties , users, property ,broker requests  Report
        
    - **Then** I should see the total number of draft properties , users, property ,broker requests .
        
- **Scenario 14: View Featured Advertisements**
    
    - **Given** featured advertisements exist
        
    - **When** I view the properties , users, property ,broker requests  Report
        
    - **Then** I should see the total number of featured advertisements.
        
- **Scenario 15: View Brokerage Contracts**
    
    - **Given** brokerage contract data exists
        
    - **When** I view the Properties Report
        
    - **Then** I should see the total number of brokerage contracts.
        
- **Scenario 16: View Total properties , users, property ,broker requests  Value**
    
    - **Given** properties , users, property ,broker requests  with prices exist
        
    - **When** I view the properties , users, property ,broker requests  Report
        
    - **Then** I should see the total value of the properties , users, property ,broker requests  included in the report.
        
- **Scenario 17: View Average Property Price**
    
    - **Given** properties with prices exist
        
    - **When** I view the Properties Report
        
    - **Then** I should see the average property price based on the properties included in the report.
        
- **Scenario 18: View properties , users, property ,broker requests  Added This Month**
    
    - **Given** properties , users, property ,broker requests  were added during the current month
        
    - **When** I view the properties , users, property ,broker requests  Report
        
    - **Then** I should see the number of properties , users, property ,broker requests  added during the current month.
        
- **Scenario 19: View Properties by Status**
    
    - **Given** properties exist with different statuses
        
    - **When** I view the Properties Report
        
    - **Then** I should see a chart displaying the distribution of properties by status.
        
- **Scenario 20: View Properties by Type**
    
    - **Given** properties exist with different property types
        
    - **When** I view the Properties Report
        
    - **Then** I should see a chart displaying the distribution of properties by type.
        
- **Scenario 21: View Properties by Advertisement Type**
    
    - **Given** properties exist with different advertisement types
        
    - **When** I view the Properties Report
        
    - **Then** I should see a chart displaying the distribution of properties by advertisement type.
        
- **Scenario 22: View Properties by City**
    
    - **Given** properties exist in different cities
        
    - **When** I view the Properties Report
        
    - **Then** I should see a chart displaying the number of properties in each city.
        
- **Scenario 23: View Properties Added Over Time**
    
    - **Given** properties were added on different dates
        
    - **When** I view the Properties Report
        
    - **Then** I should see a chart displaying property additions over time.
        
- **Scenario 24: Update Charts Based on Filters**
    
    - **Given** I have applied one or more report filters
        
    - **When** the report is updated
        
    - **Then** all relevant charts should reflect the filtered data.
        
- **Scenario 25: Update Summary Statistics Based on Filters**
    
    - **Given** I have applied one or more report filters
        
    - **When** the report is updated
        
    - **Then** all relevant summary statistics should reflect the filtered data.
        
- **Scenario 26: Display No Data State**
    
    - **Given** no properties match the selected filters
        
    - **When** the report is updated
        
    - **Then** the system should display an appropriate no-data state.
        
- **Scenario 27: Display Zero Values When Applicable**
    
    - **Given** the applied filters return no data for a specific statistic
        
    - **When** the report is updated
        
    - **Then** the relevant statistic should display an appropriate zero or empty value instead of outdated data.
        
- **Scenario 28: Verify Report Data Consistency**
    
    - **Given** property data exists
        
    - **When** I compare the summary statistics and charts with the actual property data
        
    - **Then** all displayed values should be accurate and consistent.
        
- **Scenario 29: Print properties , users, property ,broker requests  Report**
    
    - **Given** I am on the properties , users, property ,broker requests  Report page
        
    - **When** I click **Print Report**
        
    - **Then** the print preview should open successfully.
        
- **Scenario 30: Print Filtered properties , users, property ,broker requests  Report**
    
    - **Given** I have applied one or more filters
        
    - **When** I click **Print Report**
        
    - **Then** the printed report should contain only the data matching the applied filters.
        
- **Scenario 31: Verify Currency Formatting**
    
    - **Given** the report contains property prices and values
        
    - **When** I view the financial statistics
        
    - **Then** monetary values should be displayed using the correct currency and formatting.

