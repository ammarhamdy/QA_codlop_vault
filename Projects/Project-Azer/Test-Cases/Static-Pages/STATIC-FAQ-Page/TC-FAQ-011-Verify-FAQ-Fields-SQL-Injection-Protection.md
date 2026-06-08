---
tc_id: TC-FAQ-011
title: Verify SQL Injection Protection on FAQ Fields
priority: High
status: Ready
type: Security
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - security
  - sqli
---

# Test Data
| Field | Value |
| ----- | ----- |
| SQLi Question Payload | ' OR 1=1; -- |
| SQLi Answer Payload | ) UNION SELECT email, password FROM admins; -- |
| SQLi Search Payload | ' UNION ALL SELECT 1,2,3,4,5; -- |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the FAQ creation form or FAQ list page with search.

# Steps
1. Enter the SQLi Question Payload in the "Question" input field and save.
2. Enter the SQLi Answer Payload in the "Answer" input field and save.
3. Enter the SQLi Search Payload in the FAQ search field and press Enter.

# Expected Result
- The application executes parameterized queries or uses an ORM (e.g., Eloquent) to safely parameterize inputs.
- No database query errors, traceback dumps, or security leaks are exposed in the server response.
- The database remains secure; inputs are saved literally as harmless plaintext and searchable without bypass.

# Notes
- Ensures the application resists standard SQL injection techniques.

# Attachments
