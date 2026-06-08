---
tc_id: TC-NEWS-013
title: Verify SQL Injection Protection in News Inputs and Search
priority: High
status: Ready
type: Security
linked_requirement: 
tags:
  - test-case
  - news-admin
  - security
  - sqli
---

# Test Data
| Field | Value |
| ----- | ----- |
| SQLi Payload | ' OR '1'='1 |
| Search Payload | " UNION SELECT ALL * FROM users -- |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page or "News List" search bar.

# Steps
1. Enter the SQLi Payload into the news title field and attempt to save.
2. Enter the Search Payload into the news search bar and press Enter.

# Expected Result
- The system handles inputs as literal strings.
- No database errors or unexpected data leaks (e.g., seeing all users in news list) occur.
- The application uses parameterized queries or ORM protection.

# Notes
- Test both the POST (create/edit) and GET (search) endpoints.

# Attachments
