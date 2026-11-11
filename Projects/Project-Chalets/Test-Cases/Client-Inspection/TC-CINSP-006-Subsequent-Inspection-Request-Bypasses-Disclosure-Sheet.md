---
tc_id: TC-CINSP-006
title: Verify Subsequent Inspection Request by Same Client Bypasses Disclosure Sheet
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
| Target Chalet | `CHALET-ALKHOBAR-303` |
| Consent State | Previously accepted for `CHALET-ALKHOBAR-303` |
| Expected Toast | «أبلغنا المؤجّر باهتمامك بالمعاينة» |

# Preconditions
1. Client `0503334455` is logged in.
2. Client has already previously agreed to the Disclosure Sheet on `CHALET-ALKHOBAR-303` in an earlier session.
3. Chalet is active and published.
4. Client opens the Chalet Details screen.

# Steps
1. On `CHALET-ALKHOBAR-303` details screen, tap «طلب معاينة» (Request Inspection).
2. Observe whether the Disclosure Sheet is displayed.
3. Observe feedback messages and contact options on the screen.

# Expected Result
1. The Disclosure Sheet («ورقة الإفصاح») is NOT displayed.
2. The system immediately displays the confirmation toast: «أبلغنا المؤجّر باهتمامك بالمعاينة».
3. Contact channels («اتصال», «واتساب», «نسخ الرقم») and the exact pin map with «افتح في الخرائط» are directly available.

# Notes
- Verifies requirement `BR-INSP-03` and flow alternative `A1`.
- Reduces user friction for returning clients on listings they have already consented to inspect or contact.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
