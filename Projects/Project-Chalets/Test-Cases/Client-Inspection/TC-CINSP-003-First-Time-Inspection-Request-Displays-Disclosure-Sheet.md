---
tc_id: TC-CINSP-003
title: Verify First-Time Inspection Request Displays Privacy and Safety Disclosure Bottom Sheet
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
run_result: fail
---

# Test Data
| Field                   | Value                                                                                 |
| ----------------------- | ------------------------------------------------------------------------------------- |
| Client Account          | `0502223344` (Name: "سعد الخالدي")                                                    |
| Target Chalet           | `CHALET-JEDDAH-202` (Status: Active/Published)                                        |
| Interaction History     | First interaction by this client on `CHALET-JEDDAH-202`                               |
| Expected Notice Text    | «سيصل اسمك ورقم جوالك إلى المؤجّر ليتواصل معك»                                        |
| Expected Safety Text    | «عاين المكان بنفسك قبل أن تدفع أي مبلغ. الاتفاق والدفع بينك وبين المؤجّر خارج المنصة» |
| Expected Action Buttons | «موافق، أظهر البيانات» (Confirm), «إلغاء» (Cancel)                                    |

# Preconditions
1. Client `0502223344` is logged in with an active account.
2. Client has never previously requested an inspection or revealed contact details for `CHALET-JEDDAH-202`.
3. Client daily reveal quota has not been exceeded (< 30 listings).
4. Chalet Details screen is open.

# Steps
1. Navigate to the listing details page of `CHALET-JEDDAH-202`.
2. Tap the secondary action button «طلب معاينة» (Request Inspection).
3. Inspect the displayed bottom sheet component (`SCR-DISCLOSE-01`).
4. Verify the Arabic text content, notices, and available buttons.

# Expected Result
1. The Disclosure Bottom Sheet («ورقة الإفصاح») opens cleanly over the chalet details screen.
2. The disclosure text is displayed verbatim: «سيصل اسمك ورقم جوالك إلى المؤجّر ليتواصل معك».
3. The safety advisory warning is displayed verbatim: «عاين المكان بنفسك قبل أن تدفع أي مبلغ. الاتفاق والدفع بينك وبين المؤجّر خارج المنصة».
4. Two distinct action buttons are rendered: «موافق، أظهر البيانات» (Agree, Show Data) and «إلغاء» (Cancel).
5. At this stage, customer details are NOT yet sent to the lessor, and lessor contact channels remain masked.

# Notes
- Verifies requirement `BR-INSP-02` and Main Flow Step 2.
- Ensures legal, privacy (PDPL compliance), and fraud protection notices are explicitly surfaced to the user.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
