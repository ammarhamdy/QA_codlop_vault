---
tc_id: TC-SEE-02
title: |-
  
  Progression Gating Prevents Access to Next Unit Without Quizzes
priority: High
status: Ready
type: Functional
linked_requirement: REQ-005
tags:
  - test-case
  - progression-gating
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Current Unit | UNIT-001 |
| Next Unit | UNIT-002 |

# Preconditions
- Student is logged in and is currently studying UNIT-001.
- Student has not yet answered or submitted the quizzes for UNIT-001.

# Steps
1. Open the course curriculum navigation sidebar/menu.
2. Attempt to click and navigate directly to UNIT-002.
3. Attempt to bypass and navigate directly to UNIT-002 via URL endpoint mapping.

# Expected Result
- UNIT-002 is displayed as locked/disabled in the curriculum sidebar and cannot be clicked.
- Accessing UNIT-002 via direct URL returns an access denied or progression-gated message, keeping the student on UNIT-001 or redirecting them back.

# Notes

# Attachments
