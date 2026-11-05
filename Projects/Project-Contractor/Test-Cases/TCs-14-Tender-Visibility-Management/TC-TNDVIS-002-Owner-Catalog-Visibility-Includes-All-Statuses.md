---
tc_id: TC-TNDVIS-002
title: Verify Owner Catalog Query Scopes to Owner Across All Tender Lifecycle Statuses
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Requesting Actor | Authenticated Tender Owner (`owner_id: TO-101`) |
| Owned Tenders | 1 `Open`, 1 `Closed`, 1 `Expired`, 1 `Awarded` |
| Expected Query Scope | `WHERE owner_id = 'TO-101'` across all statuses |

# Preconditions
1. User is authenticated as Tender Owner `TO-101`.
2. Tender Owner `TO-101` owns tenders spanning all four statuses: `Open`, `Closed`, `Expired`, and `Awarded`.

# Steps
1. As logged-in Owner `TO-101`, send a GET request to the "My Tenders" endpoint (`/api/tenders/my-tenders`).
2. Inspect the database query executed by the backend.
3. Inspect the returned array of tender items.
4. Verify the statuses included in the response.

# Expected Result
1. The system evaluates the actor context as Authenticated Tender Owner.
2. The query scopes strictly to `owner_id = current_user_id` without filtering out non-open statuses.
3. The response includes all 4 tenders belonging to `TO-101`, regardless of whether they are `Open`, `Closed`, `Expired`, or `Awarded`.
4. No tenders belonging to other owners are leaked in the response.

# Notes
- Validates Main Flow Step 3, BR-10, and BR-12 in UF-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
