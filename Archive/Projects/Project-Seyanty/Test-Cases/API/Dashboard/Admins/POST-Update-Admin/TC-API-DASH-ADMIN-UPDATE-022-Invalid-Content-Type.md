---
tc_id: TC-API-DASH-ADMIN-UPDATE-022
title: Update admin with an invalid Content-Type header
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
| Content-Type | `application/json` *(unsupported for this endpoint)* |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json` (or `text/plain`).
4. Send the request body as JSON-formatted data.
5. Send the request and capture the response.

# Expected Result
- The API returns an appropriate error status code (`415 Unsupported Media Type` or `400 Bad Request`).
- The request is rejected and no admin record is modified.

# Notes
- The endpoint only accepts `multipart/form-data`.

# Attachments