---
tc_id: TC-014
title: Verify Successful Inquiry Submission via Contact Us Form
priority: High
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - submission
  - inquiry
---

# Test Data
| Field           | Value                 |
| --------------- | --------------------- |
| Name            | John Doe              |
| Email Address   | john.doe@example.com  |
| Phone Number    | +1123456789           |
| Message Content | This is an inquiry message regarding a product. |
| Request Type    | Inquiry               |

# Preconditions
- User is on the website's 'Contact Us' page.

# Steps
1. Navigate to the 'Contact Us' page.
2. Enter a valid Name (e.g., `John Doe`).
3. Enter a valid Email Address (e.g., `john.doe@example.com`).
4. Enter a valid Phone Number (e.g., `+1123456789`).
5. Enter a message in the Message Content field (e.g., `This is an inquiry message regarding a product.`).
6. Select 'Inquiry' as the Request Type.
7. Click the "Submit" button.

# Expected Result
- The system should display a confirmation message (e.g., "Your inquiry has been submitted successfully.").
- The submitted request should be stored in the database.
- The request should be visible in the administrator's review panel.

# Notes
- Verify database entry and admin panel visibility post-submission.

# Attachments
