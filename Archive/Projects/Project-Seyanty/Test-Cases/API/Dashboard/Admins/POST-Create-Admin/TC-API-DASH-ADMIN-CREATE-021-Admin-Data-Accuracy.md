---
tc_id: TC-API-DASH-ADMIN-CREATE-021
title: Verify created admin data accuracy
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
2. Capture the response and record the returned `data`.
3. Compare each returned field (`name`, `email`, `status`) with the submitted values.
4. Verify the returned `photo` URL points to the uploaded file and is accessible.

# Expected Result
- `data.name` equals the submitted `name` (`Admin-10`).
- `data.email` equals the submitted `email` (`admin-10@mail.com`).
- `data.status` is `"active"` (default status for a newly created admin).
- `data.photo` is a valid URL under `https://seyanty.info/storage/admins/`.
- `data.id` is a positive integer.

# Notes

# Attachments
