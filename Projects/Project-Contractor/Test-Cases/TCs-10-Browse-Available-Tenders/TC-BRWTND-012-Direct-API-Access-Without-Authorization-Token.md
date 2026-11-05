---
tc_id: TC-BRWTND-012
title: Verify Public Catalog API Allows Unrestricted Access Without Authentication Tokens
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Public API Endpoint | GET `/api/public/tenders` (or `/api/tenders/browse`) |
| Request Headers | No `Authorization` header, no session cookies |
| Expected HTTP Status | `200 OK` |

# Preconditions
1. Backend tender catalog API service is running.
2. Active open tenders exist in the database.

# Steps
1. Open an API client or curl terminal session without any authentication credentials.
2. Send an HTTP GET request to `/api/public/tenders`.
3. Inspect the returned HTTP status code and response payload.
4. Verify whether any returned record contains `status != 'Open'` or past `end_date`.

# Expected Result
1. The API responds with HTTP 200 OK without requiring an Authorization bearer token or authentication cookies.
2. The payload contains the list of active public tenders with status `Open`.
3. No closed, expired, or awarded tenders are present in the response array.
4. Adheres strictly to BR-02 ("Professionals can access the application without registration or login. Phone verification is not required") and BR-04.

# Notes
- Validates the security and authorization rule for anonymous professional access per BR-02 and BR-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
