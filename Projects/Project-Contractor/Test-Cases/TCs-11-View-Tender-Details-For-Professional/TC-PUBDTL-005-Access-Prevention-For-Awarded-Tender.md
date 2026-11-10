---
tc_id: TC-PUBDTL-005
title: Verify Access Prevention and Notice Display for Awarded Tender
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-705` |
| Direct URL Target | `/tenders/TND-705` |
| Status | `Awarded` |
| Expected Notice | `"This tender is no longer available or is closed."` |

# Preconditions
1. Tender `TND-705` has status `Awarded` (an offer was accepted by the tender owner).
2. User is unauthenticated (Professional).

# Steps
1. Navigate directly to the URL: `/tenders/TND-705`.
2. Await system query validation.
3. Observe the response and UI output.
4. Verify whether bidding options or detailed attachments are exposed.

# Expected Result
1. The system detects that the tender is in `Awarded` status and blocks public access per BR-04.
2. The user sees the informational message: `"This tender is no longer available or is closed."`
3. Project specifications and documents are suppressed.
4. The "Submit Offer" button is omitted or completely disabled.
5. A button or link allows the user to browse currently available tenders.

# Notes
- Validates Alternative Flow E2 and BR-04 for awarded tender restrictions.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
