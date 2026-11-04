---
tc_id: TC-TNDVIS-007
title: Verify Authenticated Owner Can Access Details of Owned Tenders Across All Statuses
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
| Authenticated User | Tender Owner (`owner_id: TO-105`) |
| Owned Closed Tender | `TND-1005` (Status: `Closed`) |
| Owned Expired Tender | `TND-1006` (Status: `Expired`) |
| Owned Awarded Tender | `TND-1007` (Status: `Awarded`) |

# Preconditions
1. User is authenticated as Tender Owner `TO-105`.
2. Tenders `TND-1005`, `TND-1006`, and `TND-1007` belong to `TO-105`.

# Steps
1. As logged-in `TO-105`, send a GET request to `/api/tenders/TND-1005` (Closed).
2. Send a GET request to `/api/tenders/TND-1006` (Expired).
3. Send a GET request to `/api/tenders/TND-1007` (Awarded).
4. Observe HTTP status codes and response payloads for all three requests.

# Expected Result
1. The system confirms `owner_id = current_user_id` for all three tenders.
2. All three requests respond with HTTP 200 OK.
3. Full tender details, uploaded files, and received offers are served to the owner.
4. Non-open statuses do not block the legitimate owner from viewing their own tender management views.

# Notes
- Validates Main Flow Step 4 and BR-12 in UF-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
