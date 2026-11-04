---
tc_id: TC-TNDVIS-001
title: Verify Professional Catalog Query Enforces Mandatory Open and Unexpired Predicate
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Requesting Actor | Anonymous / Professional |
| Database Tenders | 2 `Open` (unexpired), 1 `Closed`, 1 `Expired`, 1 `Awarded` |
| Mandatory Query Predicate | `WHERE status = 'Open' AND end_date > CURRENT_TIMESTAMP` |

# Preconditions
1. Database contains tenders in multiple lifecycle statuses: `Open`, `Closed`, `Expired`, and `Awarded`.
2. Requester has no authentication token (anonymous professional request).

# Steps
1. Send an HTTP GET request to the public browse catalog endpoint (`/api/public/tenders`).
2. Inspect the database query constructed by the backend controller / ORM layer.
3. Inspect the returned JSON payload and tender count.
4. Verify the status and expiration date of each returned item.

# Expected Result
1. The system evaluates the requester as Anonymous/Professional and applies the mandatory visibility predicate: `status = 'Open' AND end_date > CURRENT_TIMESTAMP`.
2. Only active, unexpired `Open` tenders are returned.
3. All `Closed`, `Expired`, and `Awarded` tenders are strictly excluded from the response payload.
4. Adheres strictly to BR-04 and FR-14.

# Notes
- Validates Main Flow Steps 1 to 3, BR-04, and FR-14 in UF-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
