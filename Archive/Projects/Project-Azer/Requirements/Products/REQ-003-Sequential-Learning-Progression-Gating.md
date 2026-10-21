---
requirement_id: REQ-003
title: Sequential Progression Gating via Exam Completion
priority: High
status: Approved
tags:
  - requirement
  - progression-logic
  - examination
---

# Description
To guarantee strict sequential learning pathways, a Student is locked out of Reading Section $N+1$ until they successfully clear and solve the mandatory Exam associated with Reading Section $N$. 

# Acceptance Criteria
- **AC-001:** Verify that a Student completing Reading Section 1 can see but *cannot click or access* Reading Section 2 until they complete Exam 1.
- **AC-002:** Verify that if a Student fails Exam 1, Section 2 remains strictly locked, and the Student is presented with a retake option for Exam 1.
- **AC-003:** Verify that upon changing Exam 1 status to "Passed/Solved", the system automatically unlocks Reading Section 2 for progression.