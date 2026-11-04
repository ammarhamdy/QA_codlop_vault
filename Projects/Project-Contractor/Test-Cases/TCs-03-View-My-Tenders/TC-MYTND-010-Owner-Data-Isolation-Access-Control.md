---
tc_id: TC-MYTND-010
title: Verify Strict Data Isolation and Access Control Between Different Tender Owners
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender Owner A | `owner_id: TO-100` (owns Tender A1: `Villa Project Alpha`) |
| Tender Owner B | `owner_id: TO-200` (owns Tender B1: `Private Warehouse Beta`) |

# Preconditions
1. Two distinct Tender Owner accounts (Owner A and Owner B) exist in the system.
2. Tender Owner A owns `Villa Project Alpha`.
3. Tender Owner B owns `Private Warehouse Beta`.
4. User logs in as Tender Owner A.

# Steps
1. Authenticate as Tender Owner A (`TO-100`).
2. Navigate to "My Tenders" (`SCR-TND-02`).
3. Verify the tenders displayed in Owner A's list.
4. Inspect network responses / API payloads returned for the query.
5. Search for or attempt to view Owner B's tender (`Private Warehouse Beta`) in the returned list.

# Expected Result
1. Owner A only sees tenders that belong to `owner_id: TO-100` (`Villa Project Alpha`).
2. Owner B's tender (`Private Warehouse Beta`) is completely excluded from the query results and UI view.
3. No cross-tenant / cross-owner data leakage occurs in the UI or backend payload.

# Notes
- Directly validates BR-12 ("Tender Owners can only manage tenders they have created. A Tender Owner cannot access or manage another owner's private tender information").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
