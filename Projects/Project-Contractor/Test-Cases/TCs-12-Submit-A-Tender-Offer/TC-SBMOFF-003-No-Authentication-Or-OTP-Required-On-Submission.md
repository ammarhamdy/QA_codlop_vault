---
tc_id: TC-SBMOFF-003
title: Verify Offer Submission Requires No User Registration, Login, or Phone OTP
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Tender ID | `TND-803` |
| Professional User State | Anonymous browser session (no auth token/cookies) |

# Preconditions
1. User operates in a clean private/incognito browser window with no session storage or authentication tokens.
2. Target tender `TND-803` is published and `Open`.

# Steps
1. Navigate directly to the public Tender Details screen for `TND-803`.
2. Click the "Submit Offer" button.
3. Observe if any authentication screen, login modal, or registration prompt is shown.
4. Fill all required proposal fields and click "Submit Offer".
5. Observe whether an SMS verification OTP or phone verification gate is triggered.

# Expected Result
1. The Offer Submission form opens directly without asking for login or registration.
2. No phone OTP verification code is dispatched or requested.
3. The offer is submitted directly as a guest/unauthenticated professional.
4. Adheres strictly to BR-02 ("Professionals can access the application without registration or login. Phone verification is not required") and BR-08.

# Notes
- Directly validates BR-02, BR-08, and Main Flow Step 1 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
