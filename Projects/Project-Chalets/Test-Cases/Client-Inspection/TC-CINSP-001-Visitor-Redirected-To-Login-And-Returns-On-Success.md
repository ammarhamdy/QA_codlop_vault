---
tc_id: TC-CINSP-001
title: Verify Unauthenticated Visitor Tapping Request Inspection is Prompted to Authenticate and Returns Upon Success
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
| Field | Value |
| ----- | ----- |
| User Role | Unauthenticated Visitor (Guest) |
| Target Chalet | `CHALET-RIYADH-101` (Status: Active/Published) |
| Target Action | «طلب معاينة» (Request Inspection) |
| Client Mobile | `0501112233` (Registered client account) |
| OTP Code | `1234` (Valid OTP) |

# Preconditions
1. The user has installed the mobile app and is browsing anonymously as a guest (no active authentication session).
2. The target chalet `CHALET-RIYADH-101` is published and active.
3. The user is on the Chalet Details screen (`SCR-CHALET-01`).

# Steps
1. On the chalet details screen, locate and tap the secondary action button «طلب معاينة» (Request Inspection).
2. Observe the system response and screen transition.
3. On the displayed authentication prompt / login screen, enter the mobile number `0501112233` and submit.
4. On the OTP verification screen, enter the valid verification code `1234` and submit.
5. Observe the navigation behavior upon successful authentication.

# Expected Result
1. Tapping «طلب معاينة» as a visitor immediately prompts the user to log in rather than showing the disclosure sheet or contact details.
2. The user is redirected to the authentication/login screen.
3. Upon entering valid mobile number and OTP, authentication succeeds and an active client session is established.
4. The system automatically redirects the user back to the target Chalet Details screen (`SCR-CHALET-01`).
5. The inspection request flow resumes automatically (displaying the Disclosure Sheet if it is the first time for this listing).

# Notes
- Verifies requirement `BR-INSP-01` (Authentication prerequisite) and flow alternative `A2`.
- Ensures smooth user journey with return URL/state preservation post-login.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
