---
tc_id: TC-Info-036
title: Verify Saving Customer Profile Without National ID Number and National ID Image
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
| Field       | Value         |
| ----------- | ------------- |
| Name        | Mahmoud Salam |
| National ID | (empty)       |
| ID Photo    | (empty)       |

# Preconditions
-Customer is logged in successfully ,Edit Profile screen is accessible& National ID Number and National ID Image are optional fields.
# Steps
1. Navigate to My Profile &Tap Edit Profile.
2. Enter `Ahmed Mohamed` in the Full Name field.
3. Leave the National ID Number field  &National ID Image field empty 
4. Tap Save. 
5. Observe the save response. 
# Expected Result
-The profile is saved successfully &No required-field validation messages appear for National ID Number or National ID Image. 
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*