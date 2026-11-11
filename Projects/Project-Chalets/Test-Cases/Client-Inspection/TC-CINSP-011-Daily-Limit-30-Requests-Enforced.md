---
tc_id: TC-CINSP-011
title: Verify Client Exceeding Daily Quota of 30 Listings is Blocked from Requesting Inspection
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Client Account | `0506667788` |
| Prior Daily Reveal Count | 30 unique chalet listings today |
| Target Chalet | `CHALET-YANBU-606` (31st distinct listing) |
| Expected Error Message | «وصلت للحد اليومي لإظهار بيانات التواصل. حاول غدًا» |

# Preconditions
1. Client `0506667788` has already performed 30 combined contact reveals or inspection requests across 30 different listings during the current calendar day.
2. The client's daily engagement counter equals the system threshold of 30.
3. Client is viewing a new, active listing `CHALET-YANBU-606`.

# Steps
1. On `CHALET-YANBU-606` details page, tap «طلب معاينة» (Request Inspection).
2. Observe system validation and prompt.
3. Check the application security / audit log for recorded rate limit violations.
4. Verify backend database state for `CHALET-YANBU-606`.

# Expected Result
1. The system blocks the inspection request immediately before displaying the disclosure sheet.
2. An error dialog or toast is presented with text: «وصلت للحد اليومي لإظهار بيانات التواصل. حاول غدًا».
3. The blocked attempt is recorded in the system audit/security logs.
4. No interested customer record is created for `CHALET-YANBU-606`.
5. No notification is sent to the owner of `CHALET-YANBU-606`.
6. Lessor contact channels remain hidden from the client.

# Notes
- Verifies requirement `BR-INSP-04` and flow error `E1`.
- Anti-scraping defense rule: protects lessor phone numbers from automated gathering and mass harvesting.
- Rule note: this is an automated system constraint, not a disciplinary account penalty; the quota resets automatically the following day.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
