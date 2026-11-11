---
tc_id: TC-CINSP-007
title: Verify Inspection Request Within 24-Hour Window Suppresses Duplicate Record and Notification
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
| Client Account | `0503334455` |
| Lessor Account | `0558887766` (Owner of `CHALET-ALKHOBAR-303`) |
| Target Chalet | `CHALET-ALKHOBAR-303` |
| First Request Time | `T0` (e.g., today at 10:00 AM) |
| Second Request Time | `T0 + 4 hours` (within the 24-hour window) |
| Expected Toast | «أبلغنا المؤجّر باهتمامك بالمعاينة» |

# Preconditions
1. Client `0503334455` submitted a valid inspection request for `CHALET-ALKHOBAR-303` at time `T0`.
2. Exactly one interested customer record of type `طلب معاينة` exists in the database for this pair at `T0`.
3. Lessor received the initial notification at `T0`.
4. Current time is within 24 hours of `T0` (e.g. 4 hours later).

# Steps
1. Navigate back to `CHALET-ALKHOBAR-303` as client `0503334455`.
2. Tap «طلب معاينة» (Request Inspection).
3. Observe client UI feedback.
4. Query the database table for interested customer records (`عميل مهتم`) matching client `0503334455`, chalet `CHALET-ALKHOBAR-303`, and type `طلب معاينة`.
5. Check lessor notification log for any new incoming alert.

# Expected Result
1. Client sees the standard feedback toast: «أبلغنا المؤجّر باهتمامك بالمعاينة».
2. Contact options remain displayed and accessible to the client.
3. The database record count remains exactly 1; NO second interested customer record is created.
4. The lessor receives NO new push or in-app notification for this repeat request.

# Notes
- Verifies requirement `BR-INSP-05` (Deduplication window of 24 hours) and flow alternative `A1`.
- Prevents spamming lessor notification channels while maintaining a seamless user experience for the client.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
