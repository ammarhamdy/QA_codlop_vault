---
tc_id: TC-PUBDTL-004
title: Verify Access Prevention and Notice Display for Automatically Expired Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-704` |
| Direct URL Target | `/tenders/TND-704` |
| Status | `Expired` |
| Expiration Timestamp | `2026-11-01 10:00` (Past timestamp) |
| Expected Notice | `"This tender is no longer available or is closed."` |

# Preconditions
1. Tender `TND-704` has reached its expiration date and holds status `Expired` (`end_date <= CURRENT_TIMESTAMP`).
2. User is unauthenticated (Professional).

# Steps
1. Navigate directly to the tender URL: `/tenders/TND-704`.
2. Await system query validation.
3. Observe the rendered view and UI error states.
4. Verify if technical specifications or offer submission forms are displayed.

# Expected Result
1. The system detects that the tender has expired per BR-04 and FR-13.
2. The system denies access and presents the notice: `"This tender is no longer available or is closed."`
3. Detailed project specifications, documents, and bidding capabilities are hidden.
4. Offer submission is prevented.
5. User is provided an option to return to active tenders on `SCR-PUB-01`.

# Notes
- Validates Alternative Flow E2, FR-03, and BR-04 for expired tender access restriction.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
