---
tc_id: TC-AUTH-011
title: Verify Session Token Generation, Storage, and Automatic Redirection to "My Tenders" Dashboard
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `+966501234567` |
| 4-Digit OTP | Valid 4-digit code (e.g., `8391`) |
| Expected Target Route | Tender Owner Dashboard (`/tenders/my-tenders`) |
| Client Storage Artifact | Active authentication session token |

# Preconditions
1. User is on the OTP verification screen after entering a valid mobile number.
2. A valid 4-digit OTP is received via SMS.
3. Browser/Client storage inspection tools (Developer Tools) are available.

# Steps
1. Enter the valid 4-digit OTP into the verification screen input fields.
2. Complete entry or submit the verification form.
3. Verify client storage (cookies / localStorage / sessionStorage) for presence of the authentication session token.
4. Verify the landing screen URL and dashboard view rendered after authentication completes.

# Expected Result
1. The server successfully generates an authentication session token upon verifying the OTP.
2. The session token is securely stored in client storage.
3. The user is immediately redirected to the Tender Owner dashboard ("My Tenders").
4. The user profile and tender management interface are rendered with authenticated Tender Owner privileges.

# Notes
- Directly validates `post_success` state and Step 4 of UF-01, as well as FR-01 and BR-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
