---
tc_id: TC-CINSP-010
title: Verify Inspection Request on Inactive or Unavailable Chalet Listing is Blocked
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
| Client Account | `0507778899` |
| Target Chalet | `CHALET-ABHA-505` (Status: Suspended / Deactivated / Expired) |
| Expected Message | «هذا المكان لم يعد متاحًا» (This place is no longer available) |

# Preconditions
1. Client `0507778899` is authenticated.
2. Chalet `CHALET-ABHA-505` was previously active but has just been suspended by admin, hidden due to expired subscription, or deactivated by the lessor.
3. Client navigates to the cached chalet detail view or opens a direct link.

# Steps
1. Navigate to `CHALET-ABHA-505` details screen.
2. Tap the action button «طلب معاينة» (Request Inspection).
3. Observe the system response.

# Expected Result
1. The system validates the current status of the chalet before initiating the flow.
2. The action is blocked, and an alert or inline message is displayed: «هذا المكان لم يعد متاحًا».
3. The Disclosure Sheet is NOT shown.
4. No interested customer record is created.
5. No notification is sent to the lessor.
6. Lessor contact information remains concealed.

# Notes
- Verifies requirement `BR-INSP-07` and flow error `E4`.
- Ensures clients cannot initiate inquiries on stale, suspended, or unlisted chalets.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
