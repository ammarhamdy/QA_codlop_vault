---
tc_id: TC-API-DASH-ADMIN-UPDATE-025
title: Verify updated admin data accuracy
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-UPDATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |
| name | `admin-1` |
| email | `admin-7@mail.com` |
| photo | `/home/am/Pictures/color/violet.png` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16` with the form fields above.
2. Capture the response and record the returned `data`.
3. Compare each returned field (`id`, `name`, `email`, `is_blocked`) with the expected values.
4. Verify the returned `photo` URL points to the uploaded file and is accessible.

# Expected Result
- `data.id` equals the requested `id` (`16`).
- `data.name` equals the submitted `name` (`admin-1`).
- `data.email` equals the submitted `email` (`admin-7@mail.com`).
- `data.is_blocked` remains unchanged (e.g., `active`).
- `data.photo` is a valid URL under `https://seyanty.info/storage/admins/`.

# Notes

# Attachments