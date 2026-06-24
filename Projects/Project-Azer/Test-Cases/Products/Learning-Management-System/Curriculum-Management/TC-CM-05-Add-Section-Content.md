---
tc_id: TC-CM-05
title: Adding Content to Reading Section
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - curriculum-management
  - admin
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Admin |
| Section ID | SEC-001 |
| Content | "This is the introduction to Java" (Text) + intro.mp4 (Video) |

# Preconditions
- User is logged in as an Admin.
- Reading Section SEC-001 exists within a Unit.

# Steps
1. Navigate to the management page of SEC-001.
2. Add text content "This is the introduction to Java".
3. Upload and attach a video file "`intro.mp4`".
4. Save the changes.

# Expected Result
- Content is saved successfully.
- Text and media are correctly displayed when viewing the section as a student.

# Notes

# Attachments
