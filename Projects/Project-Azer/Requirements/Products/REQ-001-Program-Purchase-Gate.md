---
requirement_id: REQ-001
title: Learning Program Purchase and Access Control
priority: High
status: Approved
tags:
  - requirement
  - e-commerce
  - authorization
---

# Description
A Student must not have access to any educational materials (Units, Reading Sections, Exams) belonging to a Learning Program until they have successfully bought or ordered that specific learning program. Attempting to view un-purchased content should redirect the user to a paywall or program summary page.

# Acceptance Criteria
- **AC-001:** Verify that a Student who has *not* ordered/bought a program receives an access denial message or is redirected to a paywall when trying to navigate directly via URL or UI to a Unit or Section within that program.
- **AC-002:** Verify that as soon as an order status transitions to successfully "Purchased" or "Ordered", all associated Units and the first Reading Section are immediately unlocked for that Student.
- **AC-003:** Verify that an Admin can always view and manage the curriculum hierarchy regardless of purchase status.