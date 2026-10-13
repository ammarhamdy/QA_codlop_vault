---
tc_id: TC-Lang-010
title: Verify the selected language and layout direction are applied on all screens after the language screen (for each of the 7 languages)
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Language Selection
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Language screen is open, no language selected.
# Steps
1. Select a language from Languages List.  
2. Tap "متابعة"  
3. Check the next screen (Login)  
4. Continue through the following screens (OTP, Select city)  
5. Go back to the language screen and repeat for the next language
# Expected Result
- The Login Screen opens in the selected language .
- The layout direction matches the test data table (RTL/LTR)  
- The same language and direction are kept on all following screens (OTP, Select city).
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*