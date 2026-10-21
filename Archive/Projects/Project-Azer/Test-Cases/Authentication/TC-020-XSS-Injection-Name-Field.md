---
tc_id: TC-20
title: Verify XSS Payload in Name Field Is Sanitized on Storage and Retrieval
priority:
  - High
status:
  - Ready
type:
  - API
linked_requirement:
tags:
  - test-case
  - authentication
run_result: pass
---

# Test Data

| Field                 | Value                                                   |
| --------------------- | ------------------------------------------------------- |
| name                  | `<script>print('XSS')</script>`                         |
| phone_code            | 966                                                     |
| phone                 | 500000011                                               |
| email                 | [test.xss01@example.com](mailto:test.xss01@example.com) |
| policies_accepted     | 1                                                       |
| password              | Admin#123                                               |
| password_confirmation | Admin#123                                               |
# Preconditions
- API is reachable
- A client-facing page or admin panel displays the registered user's name
# Steps
- Register with the XSS payload as `name`
- If registration succeeds, log in and navigate to any page that renders the user's name
- Check if the script executes in the browser
- Also check the admin panel — if admin views this user's name and the script fires, severity escalates to Critical
# Expected Result
- Name is stored as a sanitized/escaped string: `&lt;script&gt;alert('XSS')&lt;/script&gt;`
- Script does NOT execute on any rendering surface (client or admin)
- Alternatively, registration returns `422` rejecting the payload
# Notes
Stored XSS via the registration name displayed in admin panel is a **Critical** finding — it executes in a privileged context.
# Attachments
