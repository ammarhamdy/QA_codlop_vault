---
tc_id: TC-CINSP-005
title: Verify Dismissing Disclosure Sheet Cancels Inspection Request Without Disclosing Data
priority: Medium
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
| Client Account | `0502223344` |
| Target Chalet | `CHALET-JEDDAH-202` |
| Action Button | «إلغاء» (Cancel) |

# Preconditions
1. Client `0502223344` is authenticated and viewing `CHALET-JEDDAH-202`.
2. Client has tapped «طلب معاينة» and the Disclosure Sheet is currently visible.

# Steps
1. Tap the «إلغاء» (Cancel) button on the Disclosure Sheet.
2. Observe the screen state of the mobile client.
3. Verify backend database records for interested customers (`عميل مهتم`).
4. Verify lessor notification queue.

# Expected Result
1. The Disclosure Sheet closes cleanly and returns the user to the Chalet Details screen.
2. No inspection request is recorded in the system.
3. No interested customer record is generated in the database.
4. The lessor does NOT receive any notification or access to the client's name or mobile number.
5. The lessor's contact channels remain hidden, and the map remains in approximate circle mode.

# Notes
- Verifies flow alternative `A5` and requirement `BR-INSP-02`.
- Confirms privacy protection: user identity is never shared unless explicit consent is granted.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
