---
tc_id: TC-API-DASH-ADMIN-GET-010
title: Verify admin data accuracy in the get all admins response
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `pagination=on&page=1&limit=100` |
| Known Admin | `id=1`, `name=admin`, `email=admin@admin.com` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- A known admin record (e.g., `id=1`, `name=admin`, `email=admin@admin.com`) exists in the database.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=100`.
2. Locate the known admin record in the `data` array by `id`.
3. Compare the returned `name`, `email`, `photo`, and `is_blocked` values against the database values.

# Expected Result
- The record with `id=1` exists in the response.
- `name` matches the stored name (`admin`).
- `email` matches the stored email (`admin@admin.com`).
- `photo` is a valid URL under `https://seyanty.info/storage/admins/`.
- `is_blocked` matches the stored status value.

# Notes
- Data must match the database state exactly for the accounts being asserted.

# Attachments
