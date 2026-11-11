---
tc_id: TC-CINSP-009
title: Verify Lessor Attempting Inspection Request on Own Chalet Listing is Blocked
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Logged-in User | Lessor `0555554444` (Owner of `CHALET-TAIF-404`) |
| Listing URL / ID | Direct link to `CHALET-TAIF-404` |
| Expected Message | «هذا إعلانك» (This is your ad) |

# Preconditions
1. User `0555554444` is authenticated as a Lessor.
2. `CHALET-TAIF-404` is registered to and owned by `0555554444`.
3. The lessor navigates to the public detail view of `CHALET-TAIF-404` (e.g., via an old direct link, search result, or shared URL).

# Steps
1. Open the listing details page of `CHALET-TAIF-404` while logged in as its owner.
2. If customer action buttons are visible or accessible, attempt to trigger «طلب معاينة» (Request Inspection).
3. Observe the UI response, status message, and database logs.

# Expected Result
1. The system detects that the current user is the owner of the chalet listing.
2. Transactional customer controls are either replaced by the management toolbar («إدارة الإعلان») or tapping «طلب معاينة» displays the blocked message: «هذا إعلانك».
3. No inspection request is submitted.
4. No interested customer record is added to the database.
5. No notification is generated.

# Notes
- Verifies requirement `BR-INSP-06` and flow error `E3`.
- Protects data integrity by preventing lessors from inflating their own inquiry metrics or receiving circular notifications.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
