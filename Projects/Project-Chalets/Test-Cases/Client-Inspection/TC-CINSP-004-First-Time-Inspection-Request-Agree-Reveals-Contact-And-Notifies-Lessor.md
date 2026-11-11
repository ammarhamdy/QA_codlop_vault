---
tc_id: TC-CINSP-004
title: Verify Accepting Disclosure Submits Inspection Request, Displays Toast, Reveals Contact Channels, and Notifies Lessor
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
| Client Account | `0502223344` (Name: "سعد الخالدي") |
| Lessor Account | `0559998877` (Owner of `CHALET-JEDDAH-202`) |
| Target Chalet | `CHALET-JEDDAH-202` (Title: "شاليه الرمال الذهبية") |
| Expected Toast | «أبلغنا المؤجّر باهتمامك بالمعاينة» |
| Expected Notification Text | «سعد الخالدي (0502223344) يريد معاينة شاليه الرمال الذهبية» |
| Expected Channels | «اتصال» (Call), «واتساب» (WhatsApp), «نسخ الرقم» (Copy), «افتح في الخرائط» (Maps) |

# Preconditions
1. Client `0502223344` is authenticated and has not exceeded their daily limit.
2. `CHALET-JEDDAH-202` is active and owned by lessor `0559998877`.
3. Client is on the Chalet Details screen with the Disclosure Sheet («ورقة الإفصاح») visible.

# Steps
1. On the Disclosure Sheet, tap «موافق، أظهر البيانات» (Agree, Show Data).
2. Observe system response on the client's screen.
3. Check the database for newly created interested customer records.
4. Check the lessor's notification inbox and push notification service for incoming notifications.
5. Inspect the chalet screen for updated contact controls and map presentation.

# Expected Result
1. The Disclosure Sheet is dismissed immediately.
2. A confirmation toast message appears: «أبلغنا المؤجّر باهتمامك بالمعاينة».
3. An interested customer record («عميل مهتم») is created in the database with:
   - Client Name: "سعد الخالدي"
   - Client Phone: `0502223344`
   - Request Type: `طلب معاينة` (Inspection Request)
   - Listing: `CHALET-JEDDAH-202`
   - Timestamp: Current server time.
4. The lessor receives an instant notification (in-app and push): «سعد الخالدي (0502223344) يريد معاينة شاليه الرمال الذهبية».
5. Direct contact options are revealed on the client screen: «اتصال», «واتساب», «نسخ الرقم».
6. The location map updates from an approximate circular boundary to an exact location pin with an active «افتح في الخرائط» button.

# Notes
- Verifies requirements `FR-INSP-02`, `FR-INSP-03`, `BR-INSP-02`, `BR-INSP-09`.
- Confirms the end-to-end integration between client action, backend persistence, and lessor real-time alerting.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
