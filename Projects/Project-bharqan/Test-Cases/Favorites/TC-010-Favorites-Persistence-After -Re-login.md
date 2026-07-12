---
tc_id: TC-Fav-010
title: Verify Favorites Persist After Re-login
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004-Bharqan-Favorites
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is logged in and has at least one product in the Favorites list.
# Steps
1. Open the **Favorites** page and verify the favorite product is displayed.  
2. Log out of the application.  
3. Log in again using the same account.  
4. Navigate to the **Favorites** page.
# Expected Result
The previously added favorite product is still displayed in the Favorites list after logging in again with the same account.
# Notes

# Attachments
