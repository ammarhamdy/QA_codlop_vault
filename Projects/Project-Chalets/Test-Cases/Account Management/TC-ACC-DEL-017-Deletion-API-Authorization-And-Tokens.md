---
tc_id: TC-ACC-DEL-017
title: Deletion API Endpoints Authorization and Token Scope Enforcement
priority: High
status: Ready
type: API
linked_requirement: متطلبات مشروع تنفيذ - القسم 4-2 (قائمة APIs الدخول والحساب وصلاحيات التوكن)
tags:
  - test-case
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| api_get_deletion | GET /v1/me/deletion |
| api_post_deletion | POST /v1/me/deletion |
| api_delete_deletion | DELETE /v1/me/deletion |
| suspended_token_ability | suspended |
| app_token_ability | app |

# Preconditions
1. API server is running on `api.<domain>/v1`.
2. Sanctum authentication middleware is active.
3. Test users exist:
   - User A: `status = 'active'`, valid `app` token.
   - User B: `status = 'suspended'`, valid restricted `suspended` token.
   - User C: `status = 'pending_deletion'`.

# Steps
1. Call `GET /v1/me/deletion` without an `Authorization` header.
2. Call `POST /v1/me/deletion` without an `Authorization` header.
3. Call `DELETE /v1/me/deletion` without an `Authorization` header.
4. Call `GET /v1/me/deletion` and `POST /v1/me/deletion` using User B's restricted `suspended` token (ability: `suspended`).
5. Call `DELETE /v1/me/deletion` using User A's token whose account is already `active` (not in `pending_deletion`).
6. Call `POST /v1/me/deletion` using User C's token whose account is already `pending_deletion`.
7. Call `GET /v1/me/deletion` and `POST /v1/me/deletion` using User A's valid `app` token.

# Expected Result
1. Unauthenticated calls (Steps 1–3) return HTTP 401 `UNAUTHENTICATED`.
2. Step 4: The restricted `suspended` token is rejected with HTTP 403 `FORBIDDEN` by default because deletion endpoints require `app` ability.
3. Step 5: Calling `DELETE /v1/me/deletion` on an active account is rejected with HTTP 409 or 422 because the account is not pending deletion.
4. Step 6: Calling `POST /v1/me/deletion` on an account already pending deletion is rejected with HTTP 409 Conflict.
5. Step 7: Authorized calls with `app` ability execute successfully (HTTP 200).

# Notes
- Reference: Section 4-2, items 18, 19, 20, and Section 7-7 (التوكن المقيد للحساب الموقوف).
- Restricted tokens have limited capabilities (`suspended`) and must be strictly blocked from calling deletion routes.

# Attachments
- None

# Script
- None

---
*Last Updated: 2026-10-20 12:44*
