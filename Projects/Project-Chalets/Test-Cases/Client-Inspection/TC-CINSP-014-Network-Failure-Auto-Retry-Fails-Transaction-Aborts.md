---
tc_id: TC-CINSP-014
title: Verify Exhausted Network Retry Aborts Inspection Request Without Disclosing Contact Data
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
| Client Account | `0504445566` |
| Target Chalet | `CHALET-NET-707` |
| Network Mock Condition | Initial API call and subsequent automatic retry both fail (network disconnected) |
| Expected Error Message | «تعذر إظهار البيانات. تحقق من الاتصال وأعد المحاولة» |

# Preconditions
1. Client `0504445566` is viewing `CHALET-NET-707` with the Disclosure Sheet open.
2. Network connection is disabled or blocked on device (airplane mode or network proxy configured to reject all retries).

# Steps
1. Tap «موافق، أظهر البيانات» on the Disclosure Sheet.
2. Observe system retry attempts and subsequent error handling.
3. Check database records and lessor notification feed.
4. Verify whether contact details or exact map pin are exposed.

# Expected Result
1. The app attempts the request, fails, automatically retries once, and fails again.
2. The transaction is completely aborted; no partial or orphaned state is created.
3. The error message is displayed: «تعذر إظهار البيانات. تحقق من الاتصال وأعد المحاولة».
4. NO interested customer record («عميل مهتم») is saved in the database.
5. NO notification is sent to the lessor.
6. Lessor contact data and exact map coordinates remain strictly hidden.

# Notes
- Verifies requirement `BR-INSP-08` failure path and flow error `E2`.
- Confirms atomicity and rollback: contact info is never shown unless backend registration is fully confirmed.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
