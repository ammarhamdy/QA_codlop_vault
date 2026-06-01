---
tc_id: TC-020
title: Verify Administrator Can Review Submitted Requests
priority: High
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - admin
  - contact-us
  - review
---

# Test Data
| Field                     | Value                                        |
| ------------------------- | -------------------------------------------- |
| Administrator Credentials | admin@example.com / adminpass                |
| Submitted Request         | (Refer to TC-014 or TC-015 for example data) |

# Preconditions
- At least one client request has been successfully submitted (e.g., by running TC-014).
- An administrator account is available and logged into the admin panel.

# Steps
1. Log in to the administrator panel with valid credentials.
2. Navigate to the 'Contact Us Requests' or similar section.
3. Verify that the previously submitted client request(s) are listed.
4. For each request, verify the displayed information: Client Name, Email Address, Phone Number, Message Content, Request Type, and current Status.

# Expected Result
- The administrator should see a comprehensive list of all submitted client requests.
- Each request should display accurate and complete details as submitted by the client.
- The initial status of the request should be correctly displayed (e.g., 'New' or 'Pending').

# Notes
- This test depends on successful request submission scenarios.

# Attachments
