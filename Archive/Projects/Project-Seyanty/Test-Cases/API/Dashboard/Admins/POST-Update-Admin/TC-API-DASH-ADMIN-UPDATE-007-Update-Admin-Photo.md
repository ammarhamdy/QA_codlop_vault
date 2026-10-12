---
tc_id: TC-API-DASH-ADMIN-UPDATE-007
title: Update admin photo
priority:
  - Medium
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
| photo | `/home/am/Pictures/color/violet.png` (new file) |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `_method=put` and attach the new `photo` file.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK` with `"تم تعديل البيانات بنجاح"`.
- `data.photo` is a new valid URL under `https://seyanty.info/storage/admins/` pointing to the uploaded file.
- The uploaded file is accessible via the returned URL.

# Notes
- Verify the previous photo file is cleaned up or replaced on the server.

# Attachments