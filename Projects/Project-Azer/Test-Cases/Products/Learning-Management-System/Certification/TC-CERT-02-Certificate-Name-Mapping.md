---
tc_id: TC-CERT-02
title: Certificate Dynamic Name Mapping Validation
priority: High
status: Ready
type: Functional
linked_requirement: REQ-004
tags:
  - test-case
  - certification
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Profile Name | "Jonathan Q. Public" |

# Preconditions
- User is logged in as a Student.
- Profile name is set to "Jonathan Q. Public".
- User has completed a program and generated a certificate.

# Steps
1. Open the generated completion certificate.
2. Inspect the name field on the certificate.

# Expected Result
- The certificate displays the exact full name from the profile: "Jonathan Q. Public".
- The name is mapped perfectly without truncation or overlapping with other layout elements.

# Notes

# Attachments
