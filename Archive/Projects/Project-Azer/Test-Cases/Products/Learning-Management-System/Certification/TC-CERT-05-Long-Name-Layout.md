---
tc_id: TC-CERT-05
title: Certificate Layout Validation with Extremely Long Names
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-004
tags:
  - test-case
  - certification
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Profile Name | "Hubert Blaine Wolfeschlegelsteinhausenbergerdorff Sr." |

# Preconditions
- User is logged in as a Student.
- Profile name is set to an extremely long string.
- User has completed a program.

# Steps
1. Generate the completion certificate.
2. Open the certificate and inspect the name display.

# Expected Result
- The full long name is displayed.
- The text does not overlap with other layout elements (like borders or seals).
- The text is either wrapped or scaled to fit the designated name area.

# Notes

# Attachments
