---
tc_id: TC-CINSP-017
title: Verify Concurrent or Rapid Taps on Confirm Prevent Race Conditions and Duplicate Inspection Records
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Client Account | `0509990011` |
| Target Chalet | `CHALET-RACE-808` |
| Action | Rapid double-tap or simultaneous taps on «موافق، أظهر البيانات» |

# Preconditions
1. Client `0509990011` is authenticated and viewing `CHALET-RACE-808` with the Disclosure Sheet open.
2. Network latency is throttled (e.g., slow 3G) to allow a window for duplicate taps.

# Steps
1. Tap the confirmation button «موافق، أظهر البيانات» rapidly multiple times (or trigger two concurrent requests via automated test script).
2. Monitor client button states during request processing.
3. Query the database table for interested customer records (`عميل مهتم`) for client `0509990011` and chalet `CHALET-RACE-808`.
4. Inspect the lessor's notification inbox for duplicate notifications.

# Expected Result
1. The confirmation button immediately enters a disabled / loading state upon the first tap, preventing client-side duplicate dispatch.
2. The backend enforces idempotency and deduplication (`BR-INSP-05`).
3. Exactly ONE interested customer record of type `طلب معاينة` is created.
4. Exactly ONE notification is delivered to the lessor.
5. The client screen resolves smoothly to the success toast and revealed contact options without crashing or showing error messages.

# Notes
- Verifies requirement `BR-INSP-05` and flow resilience against race conditions / double submission.
- Protects database consistency and prevents lessor notification flooding.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
