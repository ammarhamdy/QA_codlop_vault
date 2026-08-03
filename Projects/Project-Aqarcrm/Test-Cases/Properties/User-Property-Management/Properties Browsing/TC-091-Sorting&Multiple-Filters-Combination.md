---
tc_id: TC-U-Brow-091
title: Verify applying sorting and multiple filters simultaneously
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-009-Properties
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Properties matching the selected criteria exist.
# Steps  
1. Select **Highest Price** from the Sort dropdown.  
2. Select the **Property Purpose** (e.g., Sale).  
3. Select a **City/Location**.  
4. Select a **Property Type**.  
5. Set a valid **Price Range**.  
6. Set a valid **Area Range**.  
7. Select the required **Number of Rooms &Bathrooms**.  

# Expected Result
-Only properties matching **all selected filters** are displayed, and the results are sorted in **descending order by price (Highest Price)**.
# Notes

# Attachments
