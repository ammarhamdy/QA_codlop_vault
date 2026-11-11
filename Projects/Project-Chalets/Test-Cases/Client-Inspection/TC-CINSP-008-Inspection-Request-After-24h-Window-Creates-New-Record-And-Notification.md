---
tc_id: TC-CINSP-008
title: Verify Inspection Request After 24-Hour Deduplication Window Creates New Record and Notification
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
| Client Account | `0503334455` (Name: "أحمد المري") |
| Lessor Account | `0558887766` |
| Target Chalet | `CHALET-ALKHOBAR-303` |
| Initial Request Time | `2026-11-08 09:00:00` |
| Subsequent Request Time | `2026-11-09 09:05:00` (> 24 hours later) |
| Expected Notification | «أحمد المري (0503334455) يريد معاينة CHALET-ALKHOBAR-303» |

# Preconditions
1. Client `0503334455` submitted an inspection request on `CHALET-ALKHOBAR-303` exactly 24 hours and 5 minutes ago (`2026-11-08 09:00:00`).
2. Current server time is `2026-11-09 09:05:00`.
3. Client has not exceeded their daily limit for the new day.

# Steps
1. Client opens `CHALET-ALKHOBAR-303` details page.
2. Tap «طلب معاينة» (Request Inspection).
3. Observe client UI feedback.
4. Query the interested customer database table for records created after `2026-11-09 09:00:00`.
5. Check the lessor's notification feed.

# Expected Result
1. The client receives the confirmation toast: «أبلغنا المؤجّر باهتمامك بالمعاينة» without displaying the disclosure sheet.
2. A new, second interested customer record (`عميل مهتم`) is inserted into the database with timestamp `2026-11-09 09:05:00` and type `طلب معاينة`.
3. The lessor receives a fresh real-time notification indicating renewed client interest: «أحمد المري (0503334455) يريد معاينة CHALET-ALKHOBAR-303».

# Notes
- Verifies requirement `BR-INSP-05` expiration boundary and flow alternative `A1`.
- Ensures lessors are kept up to date when prospective tenants re-engage after the 24-hour deduplication window has elapsed.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
