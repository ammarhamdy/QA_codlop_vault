---
tc_id: TC-JOIN-010
title: Verify Permanently Banned Lessor Phone Number Hides Join as Lessor Option
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Banned Lessor Mobile | `0509988771` (Permanently Banned) |
| User Current Role | Customer only |

# Preconditions
1. Mobile number `0509988771` was permanently banned as a lessor per platform penalty ladder.
2. User logs in to the mobile application using mobile number `0509988771`.

# Steps
1. Log in with `0509988771`.
2. Open the navigation menu and go to "My Account" (`حسابي`).
3. Check the profile menu options.
4. Verify whether **"Join as Lessor"** (`انضم كمؤجر`) is displayed.
5. Attempt to access the join application via direct deep link or URL scheme.

# Expected Result
1. The **"Join as Lessor"** option is completely hidden from the user interface.
2. The user is restricted permanently to customer-only features.
3. Accessing the join application via deep link redirects to the home screen or displays an access denied message.

# Notes
- Requirement: UF-28 Alternative Flow A6 ("Phone belongs to a permanently banned lessor -> 'Join as Lessor' is not shown. The user stays a customer only").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
