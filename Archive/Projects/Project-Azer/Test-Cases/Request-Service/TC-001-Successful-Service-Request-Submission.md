---
tc_id: TC-001
title: Verify Successful Request submission with valid data
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field           | Value                              |
| --------------- | ---------------------------------- |
| Name            | Fatma                              |
| Phone           | 551234567                          |
| Email           | Fatma@gmail.com                    |
| Service Type    | Workshops                          |
| Target Audience | Government agencies                |
| Request Details | Need to inquire about this service |


# Preconditions
User on partnership request page
# Steps
1. Navigate to the 'partnership request' page.
2. enter Name Fatma
3. Enter a Enter a valid Phone Number (512345678 ).
4. Enter a valid Email Address (`fatma@gmail.com`). 
5. Select Service Type & Target Audience
6. Enter Request Details
# Expected Result
-Success message is displayed (e.g., "Your Service request has been sent successfully.")
-The submitted Request should be stored in the database.
-The submitted Request record appears in the admin panel for review
# Notes

# Attachments
