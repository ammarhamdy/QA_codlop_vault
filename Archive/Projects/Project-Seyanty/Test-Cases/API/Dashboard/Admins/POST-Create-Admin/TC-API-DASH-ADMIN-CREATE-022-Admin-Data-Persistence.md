---
tc_id: TC-API-DASH-ADMIN-CREATE-022
title: Verify created admin data persistence
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-CREATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                                            |
| ------------- | ------------------------------------------------ |
| Endpoint      | `POST https://seyanty.info/api/dashboard/admins` |
| Content-Type  | `multipart/form-data`                            |
| Authorization | `Bearer <valid_token>`                           |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- A unique, unused email is available for the test.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins` with the form fields above.
2. Record the returned `data.id` from the success response.
3. Send a `GET` request to `https://seyanty.info/api/dashboard/admins` with a valid token.
4. Search the returned list for the created admin using the recorded `id` and `email`.

# Expected Result
- The create request returns a success response with a unique `data.id`.
- The subsequent `GET` request returns the created admin in the list.
- The persisted record matches the submitted `name`, `email`, and `status` (`active`).
- The admin remains available across subsequent reads, confirming persistence in the database.

# Notes
- Run at least one additional `GET` request after a short delay to confirm durable persistence.

# Attachments
