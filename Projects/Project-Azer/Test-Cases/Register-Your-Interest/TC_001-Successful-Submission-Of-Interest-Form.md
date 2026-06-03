---
tc_id: TC-001
title: Verify Successful form submission with valid data
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003
tags:
  - test-case
---

# Test Data
| Field            | Value                                         |
| ---------------- | --------------------------------------------- |
| Recorder type    | entity                                        |
| Name of entity   | مصر الخير                                     |
| Email            | `Misr El Kheir@gmail.com`                     |
| Phone            | +112345678                                    |
| Entity type      | جمعية أهلية                                   |
| Partnership type | شريك استراتيجي                                |
| Message content  | I would like to know more about your services |

# Preconditions
User on Register your interest page

# Steps
1. Navigate to the 'Register Your interest' page.
2. select recorder type
3. Enter a valid entity Name ("مؤسسة مصر الخير").
4. Enter a valid Email Address (e.g., `Misr El Kheir@gmail.com`).
5. Enter a valid Phone Number (e.g., `+1123456789`).
6. select Entity type
7. Select Partnership type
8. Enter a message in the Message Content field (e.g., I would like to know more about your services).
9. Click the "Send" button.
# Expected Result
-Success message is displayed (e.g., "Your interest has been registered successfully.")
-The submitted interest registration should be stored in the database.
-The submitted interest record appears in the admin panel for review

# Notes

# Attachments
