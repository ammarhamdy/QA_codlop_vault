---
tc_id: TC-Info-006
title: Verify a Verification Code Is Sent to the New Mobile Number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field       | Value        |
| ----------- | ------------ |
| Name        |              |
| Phone       | 512364789    |
| National ID | 145124241245 |
| Image       | -            |

# Preconditions
- The customer is logged in,  Edit Profile screen is open &The customer has an existing valid name saved.
# Steps
1. Open the Edit Profile screen.
2. Clear the Full Name field.
3. Enter 5 spaces.
4. Tap the Save button.
5. Reopen Edit Profile and check the saved name.
# Expected Result
- The system must not accept a name containing only spaces.
- The name update must be rejected with a clear validation message.
- The previously saved name must remain unchanged.
- No whitespace-only name must be stored in the database.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*