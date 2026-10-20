---
tc_id: TC-Info-004
title: Verify a Full Name Longer Than Sixty Characters Cannot Be Saved
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
| Field       | Value                                                                                             |
| ----------- | ------------------------------------------------------------------------------------------------- |
| Name        | Mmsmnamsammsasamnsnamnsamnsamnsamnmnsammnsanmasmnasmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmnmn |
| Phone       | 512364789                                                                                         |
| National ID | 145124241245                                                                                      |
| Image       |                                                                                                   |

# Preconditions
-Customer is logged in, current saved name is "Mahmoud ben Ali" &Personal Information screen is open.
# Steps
1. Enter Name Exceeds 60 character.
2. Tap Save.
# Expected Result

1.The invalid name is not persisted , validation indication is shown& The saved name remains Ahmed Ali.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*