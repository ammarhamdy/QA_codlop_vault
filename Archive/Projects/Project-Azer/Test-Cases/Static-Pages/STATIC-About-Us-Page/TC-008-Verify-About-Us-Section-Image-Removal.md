---
tc_id: TC_ABOUT_005
title: Remove existing About Section image
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-005
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| remove_image | 1 |

# Preconditions

Image already exists.

# Steps

1. Enable remove image option.
2. Save changes.

# Expected Result

- If image not required:
	- Existing image removed.
	- Default state displayed on website.
- Else:
	- Error message shown.

# Notes

Verify image file removed from storage if required.

# Attachments