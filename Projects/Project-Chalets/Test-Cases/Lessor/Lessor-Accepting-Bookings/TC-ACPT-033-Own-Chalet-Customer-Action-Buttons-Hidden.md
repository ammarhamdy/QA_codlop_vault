---
tc_id: TC-ACPT-033
title: Own Chalet Detection - Customer Action Buttons Hidden When Lessor Views Own Listing
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Action Button | Expected Visibility on Own Chalet |
| ------------- | --------------------------------- |
| "Book" (`احجز`) | **Hidden** |
| "Contact Lessor" (`تواصل`) | **Hidden** |
| "Rate" (`تقييم`) | **Hidden** |
| "Report" (`إبلاغ`) | **Hidden** |
| Alternative Button Rendered | **"Ad Management"** (`إدارة الإعلان`) |

# Preconditions
1. Lessor is authenticated.
2. Lessor opens the public page of a chalet that belongs to their own lessor account (e.g., via search, map, or shared link).

# Steps
1. Navigate to the chalet's public detail page while logged in as the owning lessor.
2. Inspect the screen for customer action controls (Book, Contact, Rate, Report).
3. Verify the primary call to action displayed.

# Expected Result
1. The system identifies that the viewing user is the owner/lessor of this chalet.
2. All customer transactional buttons ("Book", "Contact", "Rate", "Report") are completely hidden.
3. The button **"Ad Management"** (`إدارة الإعلان`) is prominently displayed instead.

# Notes
- Requirement: UF-84 (Main Flow Steps 1-3).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
