---
tc_id: TC-CINSP-013
title: Verify Network Interruption During Consent Recovers Successfully via Automatic Retry
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
| Client Account | `0504445566` |
| Target Chalet | `CHALET-NET-707` |
| Network Mock Condition | First API call drops/times out; automated second retry succeeds |
| Expected Toast | «أبلغنا المؤجّر باهتمامك بالمعاينة» |

# Preconditions
1. Client `0504445566` is authenticated and viewing `CHALET-NET-707`.
2. The Disclosure Sheet is displayed on screen.
3. Network proxy / mock tool is configured to fail the initial HTTP `POST /listings/{uuid}/contact-reveal` request (connection timeout or socket drop), but allow the immediate automatic retry to succeed with HTTP 200.

# Steps
1. Tap «موافق، أظهر البيانات» on the Disclosure Sheet.
2. Monitor network traffic and app behavior during the momentary connection blip.
3. Observe how the system handles the transient network error.
4. Verify screen state and final confirmation.

# Expected Result
1. The app detects the initial connection failure and automatically executes a single retry in the background without user intervention.
2. The retry succeeds.
3. The Disclosure Sheet is dismissed.
4. The success toast «أبلغنا المؤجّر باهتمامك بالمعاينة» is displayed.
5. An interested customer record is saved in the database.
6. The lessor receives the inspection notification.
7. Lessor contact channels and exact map pin are revealed to the client.

# Notes
- Verifies requirement `BR-INSP-08` (automated single retry mechanism) and flow error `E2` recovery path.
- Ensures transient mobile network drops do not unnecessarily fail user actions.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
