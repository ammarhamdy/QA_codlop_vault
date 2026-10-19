---
tc_id: TC-RAT-021
title: Verify Delete Option Is Unavailable to Author When Rating Is Hidden by Admin
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review ID | `REV-9930` |
| Chalet Name | `شاليه الفخامة` |
| Rating Status | `Hidden by Admin` |
| Status Badge | `«مخفي من الإدارة»` |

# Preconditions
1. Customer had published rating `REV-9930`.
2. Following a report, an Admin marked the rating as violating and set its status to `Hidden by Admin`.
3. Customer is logged in to the mobile application.

# Steps
1. Navigate to customer profile -> **"My Ratings"** (`تقييماتي`).
2. Locate the review card for `REV-9930`.
3. Inspect the status badge and available action buttons on the review card.
4. Verify whether a **"Delete"** button or delete action is offered.

# Expected Result
1. The rating is marked with the badge/label: `«مخفي من الإدارة»`.
2. The **"Delete"** option is not offered to the customer for an admin-hidden rating.
3. The customer cannot delete or alter the review while it is under administrative sanction.

# Notes
- Requirement: UF-18 Flow E2 ("Rating is Hidden by Admin -> Delete is not offered, the customer sees «مخفي من الإدارة»").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
