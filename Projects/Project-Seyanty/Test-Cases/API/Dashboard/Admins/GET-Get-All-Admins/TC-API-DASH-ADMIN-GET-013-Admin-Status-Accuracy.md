---
tc_id: TC-API-DASH-ADMIN-GET-013
title: Verify admin status accuracy in the get all admins response
priority:
  - Medium
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

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- The system contains both active and blocked admins (different `is_blocked` values).

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=100`.
2. Inspect the `is_blocked` value of each admin object.
3. Compare each value against the stored status in the database.

# Expected Result
- Each admin's `is_blocked` value matches the database status exactly.
- Active admins return `"active"` and blocked admins return their blocked status value.
- No admin object reports a status that differs from the stored value.

# Notes

# Attachments
