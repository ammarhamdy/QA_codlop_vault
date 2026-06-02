---
tc_id: TC-001
title: Verify Successful form submission with valid data
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
---

# Test Data
| Field               | Value                  |
| ------------------- | ---------------------- |
| Entity Name         | z2data                 |
| Responsible Name    | fatma                  |
| Email               | fatma@gmail.com        |
| Confirm Email       | fatma@gmail.com        |
| Phone               | 512345678              |
| Job Title           | tester                 |
| Entity Type         | Sole proprietorship    |
| Partnership Type    | Marketing partner      |
| About the Entity    | hjhhjhmnggcddfgddrtftf |
| Partnership details | cvcvvvdmnjhm,,jj       |


# Preconditions
User on partnership request page
# # Steps
1. Navigate to the 'partnership request' page.
2. enter entity name ('Z2data')
3. Enter a valid Responsible Name ('fatma')
4. Enter a valid Email Address (`fatma@gmail.com`).
5. Confirm Email Address (`fatma@gmail.com`)
6. Enter a valid Phone Number (512345678 ).
7. Enter job title Tester
8. Select Entity &Partnership type
9. Fill about the entity and partnership details.
10. Click the "Send" button.

# Expected Result
-Success message is displayed (e.g., "Your partnership request has been registered successfully.")
-The submitted Request should be stored in the database.
-The submitted Request record appears in the admin panel for review
# Notes

# Attachments
