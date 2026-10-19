---
tc_id: TC-PROF-001
title: Verify Profile Completion Rejection When National ID Already Exists in Active Account
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated Client | Logged-in user with mobile `0504444444` |
| Full Name | `تركي بن ناصر` |
| Duplicate National ID | `1000000008` (Already registered to an existing active client) |
| ID Photo | `national_id_sample.jpg` |

# Preconditions
1. Client is registered and authenticated in the mobile application.
2. Another active client account already exists in the system with National ID `1000000008`.
3. Client is on the Profile page / Identity details section.

# Steps
1. Navigate to the Profile screen in the mobile application.
2. Select the option to add/complete National Identity details.
3. Enter the duplicate National ID (`1000000008`).
4. Upload valid ID Photo (`national_id_sample.jpg`).
5. Tap the "Save" / "Update Profile" button.

# Expected Result
1. The system validates the National ID across existing active accounts.
2. The update is rejected with an error message indicating that the National ID is already associated with an existing account (e.g., "رقم الهوية الوطنية مسجل مسبقاً").
3. The duplicate National ID is not saved to the client's profile.

# Notes
- Business rule: `رقم الهوية الوطنية: فريد بين الحسابات غير المحذوفة`.
- Enforces identity uniqueness when completed from the profile page.

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:15*
