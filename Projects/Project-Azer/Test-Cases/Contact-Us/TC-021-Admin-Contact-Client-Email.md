---
tc_id: TC-021
title: Verify Administrator Can Contact Client via Email
priority: High
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - admin
  - contact-us
  - communication
  - email
---

# Test Data
| Field                   | Value                   |
| ----------------------- | ----------------------- |
| Administrator Credentials | admin@example.com / adminpass |
| Client Email Address    | client@example.com      |

# Preconditions
- An administrator is logged into the admin panel and is viewing a client request.
- The admin panel has a feature to send emails to clients.
- A client request with a valid email address is available (e.g., from TC-014).

# Steps
1. Log in to the administrator panel and navigate to a specific client request.
2. Locate the option to contact the client via Email.
3. Click the "Send Email" or similar button.
4. Verify that an email composition interface appears, pre-populated with the client's email address.
5. Compose a test email and send it.
6. Verify that the email is received by the client (requires access to client email).
7. Verify that the interaction (email sent) is logged or noted within the request details in the admin panel.

# Expected Result
- The administrator should be able to send an email to the client through the system.
- The client should receive the email.
- The email sending event should be auditable within the request's history in the admin panel.

# Notes
- Requires a verifiable email address for the client for successful receipt confirmation.
- This test verifies the system's ability to initiate email contact, not necessarily the email content itself.

# Attachments
