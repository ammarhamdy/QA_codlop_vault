---
tc_id: TC-015
title: Verify Successful Suggestion Submission via Contact Us Form
priority: High
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - submission
  - suggestion
---

# Test Data
| Field           | Value                  |
| --------------- | ---------------------- |
| Name            | Jane Smith             |
| Email Address   | jane.smith@example.com |
| Phone Number    | +1987654321            |
| Message Content | I suggest adding a new feature for dark mode. |
| Request Type    | Suggestion             |

# Preconditions
- User is on the website's 'Contact Us' page.

# Steps
1. Navigate to the 'Contact Us' page.
2. Enter a valid Name (e.g., `Jane Smith`).
3. Enter a valid Email Address (e.g., `jane.smith@example.com`).
4. Enter a valid Phone Number (e.g., `+1987654321`).
5. Enter a message in the Message Content field (e.g., `I suggest adding a new feature for dark mode.`).
6. Select 'Suggestion' as the Request Type.
7. Click the "Submit" button.

# Expected Result
- The system should display a confirmation message (e.g., "Your suggestion has been submitted successfully.").
- The submitted request should be stored in the database.
- The request should be visible in the administrator's review panel.

# Notes
- Verify database entry and admin panel visibility post-submission.

# Attachments
