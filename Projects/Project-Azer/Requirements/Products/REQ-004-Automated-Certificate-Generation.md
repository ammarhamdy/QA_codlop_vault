---
requirement_id: REQ-004
title: Automated Name-Based Certificate Issuance
priority: Medium
status: Approved
tags:
  - requirement
  - certification
  - automation
---

# Description
When a Student successfully clears the final Exam of the final Reading Section within the final Unit of a purchased Learning Program, the system must automatically generate a digital completion certificate. This certificate must dynamically extract and display the Student's registered profile name.

# Acceptance Criteria
- **AC-001:** Verify that passing the absolute final exam in a program sequence triggers an immediate generation event for the certificate.
- **AC-002:** Verify that the generated certificate document extracts the student's exact full name from their profile database record (`Profile.Name`) and maps it perfectly without truncating or overlapping text layout limits.
- **AC-003:** Verify that a Student cannot access or trigger this certificate if any preceding exam or section in the workflow has been bypassed or remains unsolved.