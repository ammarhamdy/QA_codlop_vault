---
tc_id: TC-CINSP-012
title: Verify Daily Limit Boundary Behavior for Exactly 30th Allowed and 31st Blocked Request
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
| Client Account | `0506661122` |
| Initial Daily Count | 29 successful contact reveals / inspection requests |
| Listing 30 | `CHALET-BORDER-030` |
| Listing 31 | `CHALET-BORDER-031` |
| Expected Message on 31st | «وصلت للحد اليومي لإظهار بيانات التواصل. حاول غدًا» |

# Preconditions
1. Client `0506661122` is authenticated.
2. Client has completed exactly 29 reveals/inspections across 29 distinct listings earlier today.
3. Listings `CHALET-BORDER-030` and `CHALET-BORDER-031` are active, distinct listings not yet viewed by this client.

# Steps
1. Navigate to `CHALET-BORDER-030` and tap «طلب معاينة».
2. Accept the Disclosure Sheet by tapping «موافق، أظهر البيانات».
3. Verify that the 30th request is accepted, toast is displayed, and contact details are revealed.
4. Immediately navigate to `CHALET-BORDER-031` and tap «طلب معاينة».
5. Observe the system response on this 31st attempt.

# Expected Result
1. **On 30th Request (`CHALET-BORDER-030`):**
   - The request completes successfully.
   - Confirmation toast «أبلغنا المؤجّر باهتمامك بالمعاينة» is displayed.
   - Interested customer record #30 is created.
   - Contact channels are revealed.
   - Internal daily counter reaches exactly 30.
2. **On 31st Request (`CHALET-BORDER-031`):**
   - The request is immediately rejected at step 1.
   - Error message is displayed: «وصلت للحد اليومي لإظهار بيانات التواصل. حاول غدًا».
   - Disclosure sheet is NOT opened.
   - No interested customer record is created for listing 31.
   - Lessor contact channels remain hidden.

# Notes
- Verifies boundary-value analysis (BVA) for `BR-INSP-04`: boundary value $N = 30$ passes, $N = 31$ fails.
- Confirms off-by-one errors do not exist in quota enforcement logic.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
